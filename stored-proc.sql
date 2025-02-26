--delete instance
create procedure delete_instance(IN p_id character varying)
    language plpgsql
as
$$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM mongo_schema.instances WHERE id = p_id) THEN
        RAISE EXCEPTION 'Instance with ID % does not exist.', p_id;
    END IF;

    DELETE FROM mongo_schema.instances WHERE id = p_id;
END;
$$;

--delete_objecttype
create procedure delete_objecttype(IN p_id integer)
    language plpgsql
as
$$
BEGIN
    -- Check if the id exists
    IF NOT EXISTS (SELECT 1 FROM "ObjectType" WHERE id = p_id) THEN
        RAISE EXCEPTION 'ObjectType with id % does not exist.', p_id;
    END IF;

    -- Delete the row if the id exists
    DELETE FROM "ObjectType"
    WHERE id = p_id;
END;
$$;

--delete_propertytype
create procedure delete_propertytype(IN p_id integer)
    language plpgsql
as
$$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM "PropertyType" WHERE id = p_id) THEN
        RAISE EXCEPTION 'PropertyType with id % does not exist.', p_id;
    END IF;
    DELETE FROM "PropertyType"
    WHERE id = p_id;
END;
$$;

--delete_relationshiptype
create procedure delete_relationshiptype(IN p_id integer)
    language plpgsql
as
$$
DECLARE
    rows_deleted INT;
BEGIN
    DELETE FROM "RelationshipType"
    WHERE id = p_id;

    GET DIAGNOSTICS rows_deleted = ROW_COUNT;

    IF rows_deleted = 0 THEN
        RAISE EXCEPTION 'RelationshipType with id % does not exist.', p_id;
    END IF;
END;
$$;

--get_all_instances
create function get_all_instances()
    returns TABLE(id varchar, object_type integer, name varchar, properties json, relationships json)
    language plpgsql
as
$$
BEGIN
    RETURN QUERY
    SELECT
        i.id,
        i.object_type,
        i.name,
        i.properties,
        i.relationships
    FROM mongo_schema.instances i;
END;
$$;

--get_all_instances_by_object_type
create function get_all_instances_by_object_type(p_object_type integer)
    returns TABLE(id character varying, object_type integer, name character varying, properties json, relationships json)
    language plpgsql
as
$$
BEGIN
    RETURN QUERY
    SELECT
        i.id,
        i.object_type,
        i.name,
        i.properties,
        i.relationships
    FROM mongo_schema.instances i
    WHERE i.object_type = p_object_type;
END;
$$;

--get_all_objecttypes
create function get_all_objecttypes()
    returns TABLE(id integer, name character varying, description text)
    language plpgsql
as
$$
BEGIN
    RETURN QUERY
    SELECT
        ot.id,
        ot.name,
        ot.description
    FROM "ObjectType" ot;
END;
$$;

--get_all_propertytypes
create function get_all_propertytypes()
    returns TABLE(id integer, name character varying, data_type character varying, object_type_id integer)
    language plpgsql
as
$$
BEGIN
    RETURN QUERY
    SELECT
        pt.id,
        pt.name,
        pt.data_type,
        pt.object_type_id
    FROM "PropertyType" pt;
END;
$$;

--get_all_relationshiptypes
create function get_all_relationshiptypes()
    returns TABLE(id integer, name character varying, cardinality character varying, source integer, target integer)
    language plpgsql
as
$$
BEGIN
    RETURN QUERY
    SELECT
        rt.id,
        rt.name,
        rt.cardinality,
        rt.source,
        rt.target
    FROM "RelationshipType" rt;
END;
$$;

--get_instance_by_id
create function get_instance_by_id(p_id character varying)
    returns TABLE(id character varying, object_type integer, name character varying, properties json, relationships json)
    language plpgsql
as
$$
BEGIN
    RETURN QUERY
    SELECT
        i.id,
        i.object_type,
        i.name,
        i.properties,
        i.relationships
    FROM mongo_schema.instances i
    WHERE i.id = p_id;
END;
$$;

--get_instance_details_by_relationship_type
CREATE FUNCTION get_instance_details_by_relationship_type(p_id character varying, p_name character varying)
RETURNS TABLE(id character varying, name character varying, object_type integer, properties json)
LANGUAGE plpgsql
AS
$$
BEGIN
    RETURN QUERY
    WITH relationship_id AS (
        SELECT id
        FROM "RelationshipType"
        WHERE "RelationshipType".name = p_name
    ),
    details AS (
        SELECT
            element AS item_id
        FROM mongo_schema.instances,
             jsonb_array_elements(relationships::jsonb) rel,
             jsonb_array_elements_text(rel->'target') element,
             relationship_id rt
        WHERE mongo_schema.instances.id = p_id
        AND (rel->>'type')::integer = rt.id
    )
    SELECT
        i.id,
        i.name,
        i.object_type,
        i.properties
    FROM mongo_schema.instances i
    JOIN details cai ON i.id = cai.item_id;
END;
$$;

--get_instance_relationships
create function get_instance_relationships(p_id character varying)
    returns TABLE(relationship_type character varying, instance_id character varying, instance_name character varying, object_type integer, properties json)
    language plpgsql
as
$$
BEGIN
    RETURN QUERY
    WITH details AS (
        SELECT
            element AS item_id,
            rel->>'type' AS relationship_id
        FROM mongo_schema.instances,
             jsonb_array_elements(relationships::jsonb) rel,
             jsonb_array_elements_text(rel->'target') element
        WHERE mongo_schema.instances.id = p_id
    )
    SELECT
        rt.name AS relationship_type,
        i.id AS instance_id,
        i.name AS instance_name,
        i.object_type,
        i.properties
    FROM mongo_schema.instances i
    JOIN details ON i.id = details.item_id
    JOIN "RelationshipType" rt ON details.relationship_id::integer = rt.id
    ORDER BY rt.id ASC;
END;
$$;
--get_objecttype_by_id
CREATE  FUNCTION get_objecttype_by_id(p_id INT)
RETURNS TABLE (
    id INT,
    name VARCHAR,
    description TEXT
)
LANGUAGE plpgsql
AS $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM "ObjectType" WHERE id = p_id) THEN
        RAISE EXCEPTION 'ObjectType with id % does not exist.', p_id;
    END IF;

    RETURN QUERY
    SELECT
        ot.id,
        ot.name,
        ot.description
    FROM "ObjectType" ot
    WHERE ot.id = p_id;
END;
$$;

--get_propertytype_by_id
create function get_propertytype_by_id(p_id integer)
    returns TABLE(id integer, name character varying, data_type character varying, object_type_id integer)
    language plpgsql
as
$$
DECLARE
    row_count INT;
BEGIN
    RETURN QUERY
    SELECT
        pt.id,
        pt.name,
        pt.data_type,
        pt.object_type_id
    FROM "PropertyType" pt
    WHERE pt.id = p_id;

    GET DIAGNOSTICS row_count = ROW_COUNT;

END;
$$;

--get_propertytypes_by_object_type_id
create function get_propertytypes_by_object_type_id(p_object_type_id integer)
    returns TABLE(id integer, name character varying, data_type character varying, object_type_id integer)
    language plpgsql
as
$$
BEGIN
    RETURN QUERY
    SELECT
        pt.id,
        pt.name,
        pt.data_type,
        pt.object_type_id
    FROM "PropertyType" pt
    WHERE pt.object_type_id = p_object_type_id;
END;
$$;

--get_relationshiptype_by_id
CREATE FUNCTION get_relationshiptype_by_id(p_id INT)
RETURNS TABLE (
    id INT,
    name VARCHAR,
    cardinality VARCHAR,
    source INT,
    target INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM "RelationshipType" WHERE id = p_id) THEN
        RAISE EXCEPTION 'RelationshipType with id % does not exist.', p_id;
    END IF;

    RETURN QUERY
    SELECT 
        rt.id, 
        rt.name, 
        rt.cardinality, 
        rt.source, 
        rt.target
    FROM "RelationshipType" rt
    WHERE rt.id = p_id;
END;
$$;

--insert_objecttype
create procedure insert_objecttype(IN p_name character varying, IN p_description text)
    language plpgsql
as
$$
BEGIN
    INSERT INTO "ObjectType" (name, description)
    VALUES (p_name, p_description);
END;
$$;

--insert_propertytype
create procedure insert_propertytype(IN p_name character varying, IN p_data_type character varying, IN p_object_type_id integer)
    language plpgsql
as
$$
BEGIN
    INSERT INTO "PropertyType" (name, data_type, object_type_id)
    VALUES (p_name, p_data_type, p_object_type_id);
END;
$$;

--insert_relationshiptype
create procedure insert_relationshiptype(IN p_name character varying, IN p_cardinality character varying, IN p_source integer, IN p_target integer)
    language plpgsql
as
$$
BEGIN
    INSERT INTO "RelationshipType" (name, cardinality, source, target)
    VALUES (p_name, p_cardinality, p_source, p_target);
END;
$$;

--update_objecttype
create procedure update_objecttype(IN p_id integer, IN p_name character varying, IN p_description text)
    language plpgsql
as
$$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM "ObjectType" WHERE id = p_id) THEN
        RAISE EXCEPTION 'ObjectType with id % does not exist.', p_id;
    END IF;

    UPDATE "ObjectType"
    SET
        name = p_name,
        description = p_description
    WHERE id = p_id;
END;
$$;

--update_propertytype
create procedure update_propertytype(IN p_id integer, IN p_name character varying, IN p_data_type character varying, IN p_object_type_id integer)
    language plpgsql
as
$$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM "PropertyType" WHERE id = p_id) THEN
        RAISE EXCEPTION 'PropertyType with id % does not exist.', p_id;
    END IF;
    UPDATE "PropertyType"
    SET
        name = p_name,
        data_type = p_data_type,
        object_type_id = p_object_type_id
    WHERE id = p_id;
END;
$$;
--update_relationshiptype
create procedure update_relationshiptype(IN p_id integer, IN p_name character varying, IN p_cardinality character varying, IN p_source integer, IN p_target integer)
    language plpgsql
as
$$
BEGIN
    UPDATE "RelationshipType"
    SET name = p_name,
        cardinality = p_cardinality,
        source = p_source,
        target = p_target
    WHERE id = p_id;
END;
$$;