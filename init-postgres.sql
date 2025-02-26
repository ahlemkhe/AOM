create table "ObjectType"
(
    id          serial
        primary key,
    name        varchar(255),
    description text
);

alter table "ObjectType"
    owner to aom_user;

INSERT INTO public."ObjectType" (id, name, description) VALUES (1, 'User', 'Represents a system user');
INSERT INTO public."ObjectType" (id, name, description) VALUES (2, 'Case', 'Represents a case');
INSERT INTO public."ObjectType" (id, name, description) VALUES (3, 'Decision', 'Represents a decision');
INSERT INTO public."ObjectType" (id, name, description) VALUES (4, 'Finding', 'Represents a finding');
INSERT INTO public."ObjectType" (id, name, description) VALUES (5, 'WorkStream', 'Represents a workstream');
INSERT INTO public."ObjectType" (id, name, description) VALUES (6, 'ActionItem', 'Represents an action item');
INSERT INTO public."ObjectType" (id, name, description) VALUES (7, 'Milestone', 'Represents a milestone');
INSERT INTO public."ObjectType" (id, name, description) VALUES (8, 'Event', 'Represents an event');
INSERT INTO public."ObjectType" (id, name, description) VALUES (9, 'RCA', 'Represents a Root Cause Analysis');
INSERT INTO public."ObjectType" (id, name, description) VALUES (10, 'Objective', 'Represents an objective');
INSERT INTO public."ObjectType" (id, name, description) VALUES (11, 'ContentItem', 'Represents a content item');
INSERT INTO public."ObjectType" (id, name, description) VALUES (12, 'Post', 'Represents a written communication shared within a case, fostering discussions');
INSERT INTO public."ObjectType" (id, name, description) VALUES (13, 'Poll', 'Represents a poll for voting');
INSERT INTO public."ObjectType" (id, name, description) VALUES (14, 'Contact', 'Represents contact details of an individual or entity');
INSERT INTO public."ObjectType" (id, name, description) VALUES (15, 'VotingOption', 'Represents a voting option for a poll');
INSERT INTO public."ObjectType" (id, name, description) VALUES (16, 'Comment', 'Represents a comment on a post');
INSERT INTO public."ObjectType" (id, name, description) VALUES (17, 'Message', 'Represents a message');
INSERT INTO public."ObjectType" (id, name, description) VALUES (18, 'Notification', 'Represents a notification');
INSERT INTO public."ObjectType" (id, name, description) VALUES (19, 'Template', 'Represents a case template');
INSERT INTO public."ObjectType" (id, name, description) VALUES (20, 'Widget', 'Represents a widget ');
INSERT INTO public."ObjectType" (id, name, description) VALUES (21, 'Cause Category', 'Represents a cause category for RCA');
INSERT INTO public."ObjectType" (id, name, description) VALUES (22, 'Log Entry', null);


create table "PropertyType"
(
    id             serial
        primary key,
    data_type      varchar(255),
    object_type_id integer
        constraint propertytype_object_type_id_foreign
            references "ObjectType"
            on delete set null,
    name           varchar(255)
);

alter table "PropertyType"
    owner to aom_user;

INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (1, 'String', 20, 'name');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (2, 'String', 20, 'type');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (3, 'Text', 20, 'description');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (4, 'DateTime', 2, 'date_updated');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (5, 'DateTime', 1, 'date_added');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (6, 'DateTime', 1, 'date_joined_case');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (7, 'String', 2, 'severity_level');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (8, 'DateTime', 2, 'date_created');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (9, 'TEXT', 2, 'description');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (10, 'String', 2, 'status');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (11, 'DateTime', 2, 'date_closed');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (12, 'String', 2, 'title');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (13, 'String', 2, 'location');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (14, 'String', 2, 'category');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (15, 'Integer', 2, 'number_of_participants');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (16, 'String', 5, 'title');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (17, 'DateTime', 5, 'date_updated');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (18, 'DateTime', 5, 'date_created');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (19, 'Decimal', 5, 'completion_percentage');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (20, 'String', 7, 'title');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (21, 'Text', 7, 'description');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (22, 'String', 7, 'acceptance_criteria');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (23, 'String', 7, 'priority');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (24, 'String', 7, 'status');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (25, 'DateTime', 7, 'due_date');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (26, 'Boolean', 7, 'overdue');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (27, 'DateTime', 7, 'date_created');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (28, 'DateTime', 7, 'date_updated');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (29, 'String', 6, 'title');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (30, 'TEXT', 6, 'description');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (31, 'String', 6, 'priority');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (32, 'String', 6, 'status');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (33, 'DateTime', 6, 'due_date');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (34, 'TEXT', 6, 'tags');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (35, 'Integer', 6, 'number_of_attachements');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (36, 'Integer', 6, 'number_of_comments');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (37, 'Boolean', 6, 'overdue');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (38, 'Decimal', 6, 'completion_percentage');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (39, 'DateTime', 6, 'date_created');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (40, 'DateTime', 6, 'date_updated');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (41, 'DateTime', 8, 'date_updated');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (42, 'String', 3, 'impact_severity');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (43, 'String', 3, 'title');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (44, 'String', 3, 'rationale');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (45, 'String', 3, 'impact');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (46, 'String', 3, 'status');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (47, 'DateTime', 3, 'effective_date');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (48, 'String', 3, 'tags');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (49, 'String', 3, 'type');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (50, 'DateTime', 3, 'date_created');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (51, 'DateTime', 3, 'date_updated');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (52, 'String', 4, 'severity');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (53, 'TEXT', 4, 'description');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (54, 'String', 4, 'title');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (55, 'String', 4, 'location');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (56, 'String', 4, 'impact');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (57, 'String', 4, 'status');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (58, 'String', 4, 'priority');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (59, 'DateTime', 4, 'date_of_discovery');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (60, 'String', 4, 'tags');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (61, 'String', 4, 'source_of_finding');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (62, 'DateTime', 4, 'date_created');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (63, 'DateTime', 4, 'date_updated');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (64, 'DateTime', 10, 'date_updated');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (65, 'String', 13, 'title');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (66, 'Text', 13, 'description');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (67, 'String', 13, 'status');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (68, 'Integer', 13, 'number_of_choices');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (69, 'Integer', 13, 'number_of_votes');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (70, 'String', 13, 'voting_result');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (71, 'DateTime', 13, 'date_created');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (72, 'DateTime', 13, 'date_updated');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (73, 'String', 14, 'first_name');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (74, 'String', 14, 'last_name');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (75, 'String', 14, 'phone_number');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (76, 'String', 14, 'email');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (77, 'String', 14, 'job_title');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (78, 'String', 14, 'company');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (79, 'DateTime', 14, 'date_created');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (80, 'DateTime', 14, 'date_updated');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (81, 'String', 1, 'phone_number');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (82, 'String', 1, 'First Name');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (83, 'String', 1, 'Email');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (84, 'String', 1, 'department');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (85, 'String', 1, 'system_role');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (86, 'String', 1, 'company');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (87, 'String', 1, 'Last Name');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (88, 'String', 1, 'job_title');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (89, 'String', 19, 'name');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (90, 'String', 21, 'name');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (91, 'Text', 21, 'description');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (92, 'String', 2, 'case_id');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (93, 'String', 2, 'duration');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (94, 'TEXT', 10, 'description');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (95, 'DateTime', 6, 'start_date');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (96, 'String', 10, 'priority');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (97, 'String', 10, 'title');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (98, 'DateTime', 10, 'date_created');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (99, 'Boolean', 10, 'eliminated');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (100, 'String', 8, 'meeting_link');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (101, 'DateTime', 8, 'time');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (102, 'String', 8, 'title');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (103, 'Text', 8, 'description');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (104, 'String', 8, 'location');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (105, 'DateTime', 8, 'date_created');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (106, 'Boolean', 8, 'all_day');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (107, 'Integer', 12, 'reactions');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (108, 'DateTime', 12, 'date_created');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (109, 'Text', 12, 'body');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (110, 'String', 12, 'title');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (111, 'Integer', 12, 'number_of_comments');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (112, 'DateTime', 12, 'date_updated');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (113, 'String', 11, 'title');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (114, 'File', 11, 'file');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (115, 'String', 11, 'file_size');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (116, 'String', 11, 'tags');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (117, 'TEXT', 11, 'description');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (118, 'DateTime', 11, 'date_created');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (119, 'String', 11, 'source');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (120, 'String', 11, 'status');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (121, 'String', 11, 'file_type');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (122, 'DateTime', 9, 'date_updated');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (123, 'DateTime', 9, 'date_opened');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (124, 'String', 9, 'status');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (125, 'Sting', 9, 'title');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (126, 'String', 9, 'priority');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (127, 'Text', 9, 'preliminary_observations');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (128, 'DateTime', 9, 'date_created');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (129, 'Text', 3, 'description');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (130, 'TEXT', 5, 'description');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (131, 'DateTime', 5, 'start_date');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (132, 'DateTime', 5, 'end_date');
INSERT INTO public."PropertyType" (id, data_type, object_type_id, name) VALUES (133, 'String', 5, 'duration');


create table "RelationshipType"
(
    id          serial
        primary key,
    name        varchar(255),
    cardinality varchar(255),
    source      integer
        constraint relationshiptype_source_foreign
            references "ObjectType"
            on delete set null,
    target      integer
        constraint relationshiptype_target_foreign
            references "ObjectType"
            on delete set null
);

alter table "RelationshipType"
    owner to aom_user;

INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (2, 'Case has Sponsor', 'has 1', 2, 1);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (3, 'Case has Manager', 'has 1', 2, 1);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (4, 'Case has Creator', 'has 1', 2, 1);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (5, 'Case has Stakeholders', '0-many', 2, 1);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (6, 'Case has Contributors', '0-many', 2, 1);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (7, 'Case has Observers', '0-many', 2, 1);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (8, 'Case has Objectives', '0-many', 2, 10);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (9, 'Case has Milestones', '0-many', 2, 7);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (10, 'Case has Findings', '0-many', 2, 4);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (11, 'Case has Decisions', '0-many', 2, 3);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (12, 'Case has Content Items', '0-many', 2, 11);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (13, 'Case has Action Items', '0-many', 2, 6);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (14, 'Case linked to Content Items', '0-many', 2, 11);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (15, 'Case has Events', '0-many', 2, 8);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (16, 'Case has Posts', '0-many', 2, 12);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (17, 'Case has Polls', '0-many', 2, 13);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (18, 'Case has Contacts', '0-many', 2, 14);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (19, 'Case linked to Contacts', '0-many', 2, 14);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (20, 'Case triggered Notifications', '0-many', 2, 18);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (21, 'Objective has Creator', 'has 1', 10, 1);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (22, 'Objective last updated by', 'has 1', 10, 1);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (23, 'Objective has Milestones', '0-many', 10, 7);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (24, 'Objective has Action Items', '0-many', 10, 6);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (25, 'Objective triggered Notifications', '0-many', 10, 18);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (26, 'Objective recorded Log Entries', '1-many', 10, 22);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (27, 'Case recorded Log Entries', '1-many', 2, 22);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (28, 'Workstream has Case', 'has 1', 5, 2);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (29, 'Objective has Case', 'has 1', 10, 2);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (30, 'Workstream has Creator', 'has 1', 5, 1);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (31, 'Workstream last updated by', 'has 1', 5, 1);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (32, 'Case has Workstreams', '0-many', 2, 5);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (33, 'Workstream has Milestones', '0-many', 5, 7);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (34, 'Workstream has Action Items', '0-many', 5, 6);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (35, 'Workstream trigerred Notifications ', '0-many', 5, 18);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (36, 'Workstream recorded Log Entries', '1-many', 5, 22);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (37, 'Milestone has Case', 'has 1', 7, 2);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (38, 'Milestone has Workstream', 'has 1', 7, 5);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (39, 'Milestone has Creator', 'has 1', 7, 1);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (40, 'Milestone last updated by', 'has 1', 7, 1);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (41, 'Milestone has Assignees', '0-many', 7, 1);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (42, 'Milestone has Comments', '0-many', 7, 16);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (43, 'Milestone triggered Notifications', '0-many', 7, 18);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (44, 'Milestone recorded Log Entries', '1-many', 7, 22);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (45, 'Action Item has Case', 'has 1', 6, 2);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (46, 'Action Item has Workstream', 'has 1', 6, 5);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (47, 'Action Item last updated by', 'has 1', 6, 1);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (49, 'Action Item related to Objectives', '0-many', 6, 10);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (50, 'Action Item related to Milestones', '0-many', 6, 7);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (51, 'Action Item related to Action Items', '0-many', 6, 6);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (52, 'Action Item related to Decision', '0-many', 6, 3);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (53, 'Action Item related to Findings', '0-many', 6, 4);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (54, 'Action Item referenced Content Item', '0-many', 6, 11);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (55, 'Action Item related to Events', '0-many', 6, 8);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (56, 'Action Item has Comments', '0-many', 6, 16);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (57, 'Action Item triggered Notifications', '0-many', 6, 18);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (58, 'Action Item recorded Log Entries', '1-many', 6, 22);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (59, 'Content Item has Case', 'has 1', 11, 2);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (60, 'Content Item linked to Case', '0-many', 11, 2);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (61, 'Content Item has Workstream', 'has 1', 11, 5);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (62, 'Content Item last updated by ', 'has 1', 11, 1);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (63, 'Content Item related to Objectives', '0-many', 11, 10);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (64, 'Content Item referenced in Action Items', '0-many', 11, 6);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (65, 'Content Item referenced in Decision', '0-many', 11, 3);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (66, 'Content Item referenced in Findings', '0-many', 11, 4);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (67, 'Content Item referenced in Events', '0-many', 11, 8);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (68, 'Content Item has Comments', '0-many', 11, 16);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (69, 'Content Item triggered Notification', '0-many', 11, 18);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (70, 'Content Item recorded Log Entries', '1-many', 11, 22);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (71, 'Decision has Case', 'has 1', 3, 2);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (72, 'Decision has Creator', 'has 1', 3, 1);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (73, 'Decision last updated by ', 'has 1', 3, 1);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (75, 'Decision has Voters', '0-many', 3, 1);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (76, 'Decision referenced Content Items', '0-many', 3, 11);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (77, 'Decision has Comments', '0-many', 3, 16);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (78, 'Decision triggered Notifications', '0-many', 3, 18);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (79, 'Decision recorded Log Entries', '1-many', 3, 22);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (80, 'Finding has Case', 'has 1', 4, 2);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (81, 'Finding has Creator', 'has 1', 4, 1);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (82, 'Finding last updated by ', 'has 1', 4, 1);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (83, 'Finding has Assignees', '0-many', 4, 1);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (84, 'Finding related to Action Items', '0-many', 4, 6);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (85, 'Finding related to Decisions', '0-many', 4, 3);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (86, 'Finding related to Findings', '0-many', 4, 4);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (87, 'Finding referenced Content Items', '0-many', 4, 11);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (88, 'Finding related to Events', '0-many', 4, 8);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (89, 'Message has Receiver', 'has 1', 17, 1);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (90, 'Action Item has Owner', 'has 1', 6, 1);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (91, 'Decision related Action Items', '0-many', 3, 6);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (92, 'Decision related Decisions', '0-many', 3, 3);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (93, 'Decision related Findings', '0-many', 3, 4);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (94, 'Decision related Events', '0-many', 3, 8);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (95, 'Milestone related Action Items', '0-many', 7, 6);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (96, 'Milestone related Objectives', '0-many', 7, 10);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (97, 'Milestone related Events', '0-many', 7, 8);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (98, 'Content Item has Owner', 'has 1', 11, 1);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (99, 'Finding has Comments', '0-many', 4, 16);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (100, 'Finding triggered Notifications', '0-many', 4, 18);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (101, 'Finding recorded Log Entries', '1-many', 4, 22);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (102, 'Event has Case', 'has 1', 8, 2);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (103, 'Event last updated by ', 'has 1', 8, 1);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (104, 'Event has Guests', '0-many', 8, 1);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (105, 'Event related to Milestones', '0-many', 8, 7);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (106, 'Event related to Decisions', '0-many', 8, 3);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (107, 'Event related to Findings', '0-many', 8, 4);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (74, 'Decision has approval authorities', '1-many', 3, 1);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (48, 'Action Item has Assignees', '0-many', 6, 1);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (108, 'Event referenced Content Items', '0-many', 8, 11);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (109, 'Event triggered Notifications', '0-many', 8, 18);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (110, 'Event recorded Log Entries', '1-many', 8, 22);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (111, 'Post has Case', 'has 1', 12, 2);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (112, 'Post has Creator', 'has 1', 12, 1);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (113, 'Post last updated by', 'has 1', 12, 1);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (114, 'Post has Reactions', '0-many', 12, 1);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (115, 'Post referenced Content Items', '0-many', 12, 11);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (116, 'Post has Comments ', '0-many', 12, 16);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (117, 'Post triggered Notifications', '0-many', 12, 18);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (118, 'Post recorded Log Entries', '1-many', 12, 22);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (119, 'Poll has Case', 'has 1', 13, 2);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (120, 'Poll has Creator', 'has 1', 13, 1);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (121, 'Poll has Voter', '0-many', 13, 1);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (122, 'Poll has Voting Options', '1-many', 13, 15);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (123, 'Poll triggered Notifications', '0-many', 13, 18);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (124, 'Poll recorded Log Entries', '1-many', 13, 22);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (125, 'Case has Template', 'has 1', 2, 19);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (126, 'Template has Widgets', '0-many', 19, 20);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (127, 'Message has Sender', 'has 1', 17, 1);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (128, 'Contact has Case', 'has 1', 14, 2);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (129, 'Contact linked to Case', '0-many', 14, 2);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (130, 'Contact has Creator', 'has 1', 14, 1);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (131, 'Contact last updated by', 'has 1', 14, 1);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (132, 'Contact triggered Notifications', '0-many', 14, 18);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (133, 'Contact recorded Log Entries', '1-many', 14, 22);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (134, 'Case has RCA', '0-many', 2, 9);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (135, 'RCA has Case', 'has 1', 9, 2);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (136, 'RCA has Finding', '0-many', 9, 4);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (137, 'RCA has Cause Categories', '0-many', 9, 21);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (138, 'RCA has Creator', 'has 1', 9, 1);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (139, 'RCA last updated by', 'has 1', 9, 1);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (140, 'RCA has Assignees', '0-many', 9, 1);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (141, 'RCA has Content Items', '0-many', 9, 11);
INSERT INTO public."RelationshipType" (id, name, cardinality, source, target) VALUES (142, 'Event has Organizer', 'has 1', 8, 1);


DROP SCHEMA IF EXISTS mongo_schema CASCADE;
CREATE SCHEMA mongo_schema;
CREATE FOREIGN TABLE mongo_schema.instances
(
    _id name,
    id varchar,
    name varchar,
    object_type integer,
    properties json,
    relationships json
)
SERVER mongo_fdw_1
OPTIONS (database 'aom_instances', collection 'instances');
ALTER FOREIGN TABLE mongo_schema.instances
    OWNER TO aom_user;
