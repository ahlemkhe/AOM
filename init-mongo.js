db = connect("mongodb://aom_user:aom_password@mongo:27017/admin");
db.createCollection("instances");
use("aom_instances");


db.instances.insertMany([
    {
        "id": "user_1",
        "object_type": 1,
        "name": "Ahmed Khalid",
        "properties": {
            "Email": "ahmed.khalid@company.com",
            "company": null,
            "Last Name": "Khalid",
            "job_title": "VP of Operations",
            "First Name": "Ahmed",
            "date_added": "2025-02-19T09:00:00",
            "department": "Operations",
            "phone_number": null,
            "date_joined_case": "2025-02-19T09:00:00"
        },
        "relationships": []
    },
    {
        "id": "user_2",
        "object_type": 1,
        "name": "Yousef Akarbeh",
        "properties": {
            "Email": "yousef.akarbeh@company.com",
            "company": null,
            "Last Name": "Akarbeh",
            "job_title": "Facility Management Head",
            "First Name": "Yousef",
            "date_added": "2025-02-19T09:00:00",
            "department": "Facility Management",
            "phone_number": null,
            "date_joined_case": "2025-02-19T09:00:00"
        },
        "relationships": []
    },
    {
        "id": "user_3",
        "object_type": 1,
        "name": "Lina Saeed",
        "properties": {
            "Email": "lina.saeed@company.com",
            "company": null,
            "Last Name": "Saeed",
            "job_title": "T&D Department Head",
            "First Name": "Lina",
            "date_added": "2025-02-19T09:00:00",
            "department": "T&D",
            "phone_number": null,
            "date_joined_case": "2025-02-19T09:00:00"
        },
        "relationships": []
    },
    {
        "id": "user_4",
        "object_type": 1,
        "name": "Sami Al Harbi",
        "properties": {
            "Email": "sami.alharbi@company.com",
            "company": null,
            "Last Name": "Al Harbi",
            "job_title": "HR Director",
            "First Name": "Sami",
            "date_added": "2025-02-19T09:00:00",
            "department": "HR",
            "phone_number": null,
            "date_joined_case": "2025-02-19T09:00:00"
        },
        "relationships": []
    },
    {
        "id": "user_5",
        "object_type": 1,
        "name": "Abdullah Sami",
        "properties": {
            "Email": "abdullah.sami@company.com",
            "company": null,
            "Last Name": "Sami",
            "job_title": null,
            "First Name": "Abdullah",
            "date_added": "2025-02-19T09:00:00",
            "department": "Facility Management",
            "phone_number": null,
            "date_joined_case": "2025-02-19T09:00:00"
        },
        "relationships": []
    },
    {
        "id": "user_6",
        "object_type": 1,
        "name": "Youssef Ibrahim",
        "properties": {
            "Email": "youssef.ibrahim@company.com",
            "company": null,
            "Last Name": "Ibrahim",
            "job_title": null,
            "First Name": "Youssef",
            "date_added": "2025-02-19T09:00:00",
            "department": "Facility Management",
            "phone_number": null,
            "date_joined_case": "2025-02-19T09:00:00"
        },
        "relationships": []
    },
    {
        "id": "user_7",
        "object_type": 1,
        "name": "Khalid Nasser",
        "properties": {
            "Email": "khalid.nasser@company.com",
            "company": null,
            "Last Name": "Nasser",
            "job_title": null,
            "First Name": "Khalid",
            "date_added": "2025-02-19T09:00:00",
            "department": "IT",
            "phone_number": null,
            "date_joined_case": "2025-02-19T09:00:00"
        },
        "relationships": []
    },
    {
        "id": "user_8",
        "object_type": 1,
        "name": "Mariam Abdullah",
        "properties": {
            "Email": "mariam.abdullah@company.com",
            "company": null,
            "Last Name": "Abdullah",
            "job_title": "Health and Safety Officer",
            "First Name": "Mariam",
            "date_added": "2025-02-19T09:00:00",
            "department": "Health and Safety",
            "phone_number": null,
            "date_joined_case": "2025-02-19T09:00:00"
        },
        "relationships": []
    },
    {
        "id": "user_9",
        "object_type": 1,
        "name": "Reem Al Harith",
        "properties": {
            "Email": "reem.alharith@company.com",
            "company": null,
            "Last Name": "Al Harith",
            "job_title": null,
            "First Name": "Reem",
            "date_added": "2025-02-19T09:00:00",
            "department": "Finance",
            "phone_number": null,
            "date_joined_case": "2025-02-19T09:00:00"
        },
        "relationships": []
    },
    {
        "id": "user_10",
        "object_type": 1,
        "name": "Fahad Omar",
        "properties": {
            "Email": "fahad.omar@company.com",
            "company": null,
            "Last Name": "Omar",
            "job_title": null,
            "First Name": "Legal Advisor",
            "date_added": "2025-02-19T09:00:00",
            "department": "Finance",
            "phone_number": null,
            "date_joined_case": "2025-02-19T09:00:00"
        },
        "relationships": []
    },
    {
        "id": "objective_1",
        "object_type": 10,
        "name": "Optimize Space Utilization",
        "properties": {
            "title": "Optimize Space Utilization",
            "priority": "High",
            "eliminated": false,
            "description": "Ensure the efficient use of space in the new building to better support T&D operations and accommodate future growth.",
            "date_created": "2025-02-19T09:00:00",
            "date_updated": "2025-02-19T09:00:00"
        },
        "relationships": []
    },
    {
        "id": "objective_2",
        "object_type": 10,
        "name": "Minimize Operational Disruption",
        "properties": {
            "title": "Minimize Operational Disruption",
            "priority": "High",
            "eliminated": false,
            "description": "Execute the transfer with minimal impact on the productivity and daily operations of the T&D department.",
            "date_created": "2025-02-19T09:00:00",
            "date_updated": "2025-02-19T09:00:00"
        },
        "relationships": []
    },
    {
        "id": "objective_3",
        "object_type": 10,
        "name": "Ensure Health, Safety, and Compliance",
        "properties": {
            "title": "Ensure Health, Safety, and Compliance",
            "priority": "Medium",
            "eliminated": false,
            "description": "Conduct the relocation in accordance with health, safety, and regulatory requirements to safeguard employees and comply with KSA standards.",
            "date_created": "2025-02-19T09:00:00",
            "date_updated": "2025-02-19T09:00:00"
        },
        "relationships": []
    },
    {
        "id": "objective_4",
        "object_type": 10,
        "name": "On-Time and Cost-Effective Execution",
        "properties": {
            "title": "On-Time and Cost-Effective Execution",
            "priority": "Medium",
            "eliminated": false,
            "description": "Complete the transfer within the allocated budget and planned timeline by efficiently managing resources and vendors.",
            "date_created": "2025-02-19T09:00:00",
            "date_updated": "2025-02-19T09:00:00"
        },
        "relationships": []
    },
    {
        "id": "objective_5",
        "object_type": 10,
        "name": "Stakeholder Alignment and Satisfaction",
        "properties": {
            "title": "Stakeholder Alignment and Satisfaction",
            "priority": "Medium",
            "eliminated": false,
            "description": "Engage and align all relevant stakeholders to address concerns, incorporate feedback, and ensure satisfaction throughout the transfer process.",
            "date_created": "2025-02-19T09:00:00",
            "date_updated": "2025-02-19T09:00:00"
        },
        "relationships": []
    },
    {
        "id": "action_1",
        "object_type": 6,
        "name": "Stakeholder Engagement",
        "properties": {
            "tags": null,
            "title": "Stakeholder Engagement",
            "status": "In Progress",
            "overdue": false,
            "due_date": "2025-01-24",
            "priority": "High",
            "start_date": "2025-01-22",
            "description": null,
            "date_created": "2025-02-19T09:00:00",
            "date_updated": "2025-02-19T09:00:00",
            "number_of_comments": null,
            "completion_percentage": 0,
            "number_of_attachements": null
        },
        "relationships": [
            {
                "type": 90,
                "target": ['user_2']
            },
            {
                "type": 48,
                "target": ['user_3']
            }
        ]
    },
    {
        "id": "action_2",
        "object_type": 6,
        "name": "Conduct Site Survey",
        "properties": {
            "tags": null,
            "title": "Conduct Site Survey",
            "status": "In Progress",
            "overdue": false,
            "due_date": "2025-02-05",
            "priority": "Medium",
            "start_date": "2025-02-03",
            "description": null,
            "date_created": "2025-02-19T09:00:00",
            "date_updated": "2025-02-19T09:00:00",
            "number_of_comments": null,
            "completion_percentage": 0,
            "number_of_attachements": null
        },
        "relationships": [
            {
                "type": 90,
                "target": ['user_2']
            },
            {
                "type": 48,
                "target": ['user_8']
            },
            {
                "type": 51,
                "target": ['action_5', 'action_6']
            }
        ]
    },
    {
        "id": "action_3",
        "object_type": 6,
        "name": "Perform Renovations/Setup",
        "properties": {
            "tags": null,
            "title": "Perform Renovations/Setup",
            "status": "In Progress",
            "overdue": false,
            "due_date": "2025-02-15",
            "priority": "Medium",
            "start_date": "2025-02-06",
            "description": null,
            "date_created": "2025-02-19T09:00:00",
            "date_updated": "2025-02-19T09:00:00",
            "number_of_comments": null,
            "completion_percentage": 0,
            "number_of_attachements": null
        },
        "relationships": [
            {
                "type": 90,
                "target": ['user_2']
            },
            {
                "type": 48,
                "target": ['user_7']
            },
            {
                "type": 51,
                "target": ['action_2']
            }
        ]
    },
    {
        "id": "action_4",
        "object_type": 6,
        "name": "Health and Safety Inspection",
        "properties": {
            "tags": null,
            "title": "Health and Safety Inspection",
            "status": "In Progress",
            "overdue": false,
            "due_date": "2025-02-18",
            "priority": "Medium",
            "start_date": "2025-02-16",
            "description": null,
            "date_created": "2025-02-19T09:00:00",
            "date_updated": "2025-02-19T09:00:00",
            "number_of_comments": null,
            "completion_percentage": 0,
            "number_of_attachements": null
        },
        "relationships": [
            {
                "type": 90,
                "target": ['user_8']
            },
            {
                "type": 48,
                "target": ['user_5', 'user_6']
            },
            {
                "type": 51,
                "target": ['action_2','action_3']
            }
        ]
    },
    {
        "id": "action_5",
        "object_type": 6,
        "name": "Requirements Assessment",
        "properties": {
            "tags": null,
            "title": "Requirements Assessment",
            "status": "In Progress",
            "overdue": false,
            "due_date": "2025-01-29",
            "priority": "High",
            "start_date": "2025-01-25",
            "description": null,
            "date_created": "2025-02-19T09:00:00",
            "date_updated": "2025-02-19T09:00:00",
            "number_of_comments": null,
            "completion_percentage": 0,
            "number_of_attachements": null
        },
        "relationships": [
            {
                "type": 90,
                "target": ['user_2']
            },
            {
                "type": 48,
                "target": ['user_7', 'user_9']
            },
            {
                "type": 51,
                "target": ['action_1']
            }
        ]
    },
    {
        "id": "action_6",
        "object_type": 6,
        "name": "Approval of Budget and Timeline",
        "properties": {
            "tags": null,
            "title": "Approval of Budget and Timeline",
            "status": "In Progress",
            "overdue": false,
            "due_date": "2025-02-02",
            "priority": "High",
            "start_date": "2025-01-30",
            "description": null,
            "date_created": "2025-02-19T09:00:00",
            "date_updated": "2025-02-19T09:00:00",
            "number_of_comments": null,
            "completion_percentage": 0,
            "number_of_attachements": null
        },
        "relationships": [
            {
                "type": 90,
                "target": ['user_2']
            },
            {
                "type": 48,
                "target": ['user_9']
            },
            {
                "type": 51,
                "target": ['action_2']
            }
        ]
    },
    {
        "id": "action_7",
        "object_type": 6,
        "name": "Create and Approve Inventory",
        "properties": {
            "tags": null,
            "title": "Create and Approve Inventory",
            "status": "In Progress",
            "overdue": false,
            "due_date": "2025-02-22",
            "priority": "Medium",
            "start_date": "2025-02-19",
            "description": null,
            "date_created": "2025-02-19T09:00:00",
            "date_updated": "2025-02-19T09:00:00",
            "number_of_comments": null,
            "completion_percentage": 0,
            "number_of_attachements": null
        },
        "relationships": [
            {
                "type": 90,
                "target": ['user_3']
            },
            {
                "type": 48,
                "target": ['user_5', 'user_6']
            },
            {
                "type": 51,
                "target": ['action_4']
            }
        ]
    },
    {
        "id": "action_8",
        "object_type": 6,
        "name": "Arrange and Schedule Transport",
        "properties": {
            "tags": null,
            "title": "Arrange and Schedule Transport",
            "status": "In Progress",
            "overdue": false,
            "due_date": "2025-02-24",
            "priority": "Medium",
            "start_date": "2025-02-23",
            "description": null,
            "date_created": "2025-02-19T09:00:00",
            "date_updated": "2025-02-19T09:00:00",
            "number_of_comments": null,
            "completion_percentage": 0,
            "number_of_attachements": null
        },
        "relationships": [
            {
                "type": 90,
                "target": ['user_2']
            },
            {
                "type": 48,
                "target": ['user_5', 'user_6']
            },
            {
                "type": 51,
                "target": ['action_7']
            }
        ]
    },
    {
        "id": "action_9",
        "object_type": 6,
        "name": "Move and Setup Items",
        "properties": {
            "tags": null,
            "title": "Move and Setup Items",
            "status": "In Progress",
            "overdue": false,
            "due_date": "2025-02-28",
            "priority": "Medium",
            "start_date": "2025-02-25",
            "description": null,
            "date_created": "2025-02-19T09:00:00",
            "date_updated": "2025-02-19T09:00:00",
            "number_of_comments": null,
            "completion_percentage": 0,
            "number_of_attachements": null
        },
        "relationships": [
            {
                "type": 90,
                "target": ['user_2']
            },
            {
                "type": 48,
                "target": ['user_5', 'user_6', 'user_7']
            },
            {
                "type": 51,
                "target": ['action_8']
            }
        ]
    },
    {
        "id": "action_10",
        "object_type": 6,
        "name": "Development and Sharing the Communication Plan",
        "properties": {
            "tags": null,
            "title": "Development and Sharing the Communication Plan",
            "status": "In Progress",
            "overdue": false,
            "due_date": "2025-01-31",
            "priority": "Medium",
            "start_date": "2025-01-29",
            "description": null,
            "date_created": "2025-02-19T09:00:00",
            "date_updated": "2025-02-19T09:00:00",
            "number_of_comments": null,
            "completion_percentage": 0,
            "number_of_attachements": null
        },
        "relationships": [
            {
                "type": 90,
                "target": ['user_4']
            },
            {
                "type": 48,
                "target": ['user_5', 'user_6']
            },
            {
                "type": 51,
                "target": ['action_2']
            }
        ]
    },
    {
        "id": "action_11",
        "object_type": 6,
        "name": "Conduct Employee Orientation",
        "properties": {
            "tags": null,
            "title": "Conduct Employee Orientation",
            "status": "In Progress",
            "overdue": false,
            "due_date": "2025-02-28",
            "priority": "Medium",
            "start_date": "2025-02-25",
            "description": null,
            "date_created": "2025-02-19T09:00:00",
            "date_updated": "2025-02-19T09:00:00",
            "number_of_comments": null,
            "completion_percentage": 0,
            "number_of_attachements": null
        },
        "relationships": [
            {
                "type": 90,
                "target": ['user_3']
            },
            {
                "type": 48,
                "target": ['user_5', 'user_6']
            },
            {
                "type": 51,
                "target": ['action_9']
            }
        ]
    },
    {
        "id": "action_12",
        "object_type": 6,
        "name": "Address Post-Move Issues",
        "properties": {
            "tags": null,
            "title": "Address Post-Move Issues",
            "status": "In Progress",
            "overdue": false,
            "due_date": "2025-02-28",
            "priority": "Medium",
            "start_date": "2025-02-25",
            "description": null,
            "date_created": "2025-02-19T09:00:00",
            "date_updated": "2025-02-19T09:00:00",
            "number_of_comments": null,
            "completion_percentage": 0,
            "number_of_attachements": null
        },
        "relationships": [
            {
                "type": 90,
                "target": ['user_2']
            },
            {
                "type": 48,
                "target": ['user_5', 'user_6']
            },
            {
                "type": 51,
                "target": ['action_11']
            }
        ]
    },
    {
        "id": "action_13",
        "object_type": 6,
        "name": "Collect Feedback and Final Review",
        "properties": {
            "tags": null,
            "title": "Collect Feedback and Final Review",
            "status": "In Progress",
            "overdue": false,
            "due_date": "2025-02-28",
            "priority": "Low",
            "start_date": "2025-02-25",
            "description": null,
            "date_created": "2025-02-19T09:00:00",
            "date_updated": "2025-02-19T09:00:00",
            "number_of_comments": null,
            "completion_percentage": 0,
            "number_of_attachements": null
        },
        "relationships": [
            {
                "type": 90,
                "target": ['user_2']
            },
            {
                "type": 48,
                "target": ['user_3']
            },
            {
                "type": 51,
                "target": ['action_13']
            }
        ]
    },
    {
        "id": "finding_1",
        "object_type": 4,
        "name": "Building B not ready",
        "properties": {
            "tags": null,
            "title": "Building B not ready",
            "impact": null,
            "status": "In Progress",
            "location": null,
            "priority": "High",
            "severity": "Medium",
            "description": null,
            "date_created": "2025-02-19T09",
            "date_updated": "2025-02-19T09",
            "date_of_discovery": "2025-02-16",
            "source_of_finding": null
        },
        "relationships": [
            {
                "type": 84,
                "target": ['action_6']
            }
        ]
    },
    {
        "id": "workstream_1",
        "object_type": 5,
        "name": "Orientation and Post-Move Support",
        "properties": {
            "title": "Orientation and Post-Move Support",
            "duration": "1 week",
            "end_date": "2025-02-27",
            "start_date": "2025-02-23",
            "description": null,
            "date_created": "2025-01-19T00:00:00",
            "date_updated": "2025-01-19T00:00:00",
            "completion_percentage": 0
        },
        "relationships": [
            {
                "type": 34,
                "target": ['action_10', 'action_11', 'action_12', 'action_13']
            }
        ]
    },
    {
        "id": "milestone_1",
        "object_type": 7,
        "name": "Planning Completed",
        "properties": {
            "title": "Planning Completed",
            "status": "High",
            "overdue": false,
            "due_date": "2025-01-24",
            "priority": null,
            "description": null,
            "date_created": "2025-01-19T00:00:00",
            "date_updated": "2025-01-19T00:00:00",
            "acceptance_criteria": null
        },
        "relationships": [
            {
                "type": 95,
                "target": ['action_1', 'action_2', 'action_3']
            }
        ]
    },
    {
        "id": "milestone_2",
        "object_type": 7,
        "name": "New Space Ready",
        "properties": {
            "title": "New Space Ready",
            "status": "High",
            "overdue": false,
            "due_date": "2025-01-29",
            "priority": null,
            "description": null,
            "date_created": "2025-01-19T00:00:00",
            "date_updated": "2025-01-19T00:00:00",
            "acceptance_criteria": null
        },
        "relationships": [
            {
                "type": 95,
                "target": ['action_4', 'action_5', 'action_6']
            }
        ]
    },
    {
        "id": "milestone_3",
        "object_type": 7,
        "name": "Movement Completed",
        "properties": {
            "title": "Movement Completed",
            "status": "High",
            "overdue": false,
            "due_date": "2025-02-20",
            "priority": null,
            "description": null,
            "date_created": "2025-01-19T00:00:00",
            "date_updated": "2025-01-19T00:00:00",
            "acceptance_criteria": null
        },
        "relationships": [
            {
                "type": 95,
                "target": ['action_7', 'action_8', 'action_9']
            }
        ]
    },
    {
        "id": "workstream_2",
        "object_type": 5,
        "name": "Planning and Coordination",
        "properties": {
            "title": "Planning and Coordination",
            "duration": "2 weeks",
            "end_date": "2025-01-30",
            "start_date": "2025-01-19",
            "description": null,
            "date_created": "2025-01-19T00:00:00",
            "date_updated": "2025-01-19T00:00:00",
            "completion_percentage": 0
        },
        "relationships": [
            {
                "type": 34,
                "target": ['action_1', 'action_2', 'action_3']
            },
            {
                "type": 33,
                "target": [40]
            }
        ]
    },
    {
        "id": "workstream_3",
        "object_type": 5,
        "name": "New Space Preparation",
        "properties": {
            "title": "New Space Preparation",
            "duration": "2 weeks",
            "end_date": "2025-02-13",
            "start_date": "2025-02-02",
            "description": null,
            "date_created": "2025-01-19T00:00:00",
            "date_updated": "2025-01-19T00:00:00",
            "completion_percentage": 0
        },
        "relationships": [
            {
                "type": 34,
                "target": ['action_2', 'action_3', 'action_4']
            },
            {
                "type": 33,
                "target": ['milestone_2']
            }
        ]
    },
    {
        "id": "workstream_4",
        "object_type": 5,
        "name": "Logistics and Physical Move",
        "properties": {
            "title": "Logistics and Physical Move",
            "duration": "1 week",
            "end_date": "2025-02-20",
            "start_date": "2025-02-16",
            "description": null,
            "date_created": "2025-01-19T00:00:00",
            "date_updated": "2025-01-19T00:00:00",
            "completion_percentage": 0
        },
        "relationships": [
            {
                "type": 34,
                "target": ['action_7', 'action_8', 'action_9']
            },
            {
                "type": 33,
                "target": ['milestone_3']
            }
        ]
    },
    {
        "id": "decision_1",
        "object_type": 3,
        "name": "Budget Approval",
        "properties": {
            "tags": null,
            "type": null,
            "title": "Budget Approval",
            "impact": null,
            "status": "In Progress",
            "rationale": null,
            "description": null,
            "date_created": "2025-01-19T00:00:00",
            "date_updated": "2025-01-19T00:00:00",
            "effective_date": "2025-01-22",
            "impact_severity": "High"
        },
        "relationships": [
            {
                "type": 74,
                "target": ['user_9']
            },
            {
                "type": 91,
                "target": ['action_5', 'action_6']
            },
            {
                "type": 76,
                "target": ['content_2']
            }
        ]
    },
    {
        "id": "decision_2",
        "object_type": 3,
        "name": "Move Date Finalization",
        "properties": {
            "tags": null,
            "type": null,
            "title": "Move Date Finalization",
            "impact": null,
            "status": "In Progress",
            "rationale": null,
            "description": null,
            "date_created": "2025-01-19T00:00:00",
            "date_updated": "2025-01-19T00:00:00",
            "effective_date": "2025-01-23",
            "impact_severity": "Medium"
        },
        "relationships": [
            {
                "type": 74,
                "target": ['user_3']
            },
            {
                "type": 91,
                "target": ['action_8']
            },
            {
                "type": 76,
                "target": ['content_3']
            }
        ]
    },
    {
        "id": "case_1",
        "object_type": 2,
        "name": "Weekly Inspection",
        "properties": {
            "title": "Weekly Inspection",
            "status": "In Progress",
            "case_id": "TD-TR-002",
            "category": "Maintenance",
            "duration": "5 weeks",
            "location": "Office",
            "date_closed": null,
            "description": "This is a mandatory Weekly Inspection.",
            "date_created": "2025-01-19T00:00:00",
            "date_updated": "2025-02-16T00:00:00",
            "severity_level": "High",
            "number_of_participants": 9
        },
        "relationships": []
    },
    {
        "id": "event_1",
        "object_type": 8,
        "name": "Kickoff Meeting",
        "properties": {
            "time": null,
            "title": "Kickoff Meeting",
            "all_day": false,
            "location": "Conference Room A",
            "description": "Initial planning discussion",
            "date_created": "2025-01-19T00:00:00",
            "date_updated": "2025-01-19T00:00:00",
            "meeting_link": null
        },
        "relationships": [
           { "type" : 142, "target" : ["user_2"]}, { "type" : 108, "target" : [ "content_1" ] }
        ]
    },
    {
        "id": "case_2",
        "object_type": 2,
        "name": "Transfer of T&D Department to Building B",
        "properties": {
            "title": "Transfer of T&D Department to Building B",
            "status": "In Progress",
            "case_id": "TD-TR-001",
            "category": "Department Transfer",
            "duration": "6 weeks",
            "location": "Building B",
            "date_closed": null,
            "description": "The T&D department is being relocated to Building B to optimize space usage and improve departmental collaboration. This transfer involves preparing the new space, coordinating logistics, ensuring minimal disruption to operations, and securing approval from all stakeholders.",
            "date_created": "2025-01-19T00:00:00",
            "date_updated": "2025-02-16T00:00:00",
            "severity_level": "High",
            "number_of_participants": 9
        },
        "relationships": [
            {
                "type":13,
                "target": ['action_1', 'action_2', 'action_3', 'action_4', 'action_5', 'action_6', 'action_7', 'action_8', 'action_9', 'action_10', 'action_11', 'action_12','action_13']
            },
            {
                "type": 2,
                "target": ['user_1']
            },
            {
                "type": 3,
                "target": ['user_2']
            },
            {
                "type": 5,
                "target": ['user_1', 'user_3', 'user_4']
            },
            {
                "type": 6,
                "target": ['user_5', 'user_6', 'user_7', 'user_8']
            },
            {
                "type": 7,
                "target": ['user_9', 'user_10']
            },
            {
                "type": 8,
                "target": ['objective_1', 'objective_2', 'objective_3', 'objective_4', 'objective_5']
            },
            {
                "type": 10,
                "target": ['finding_1']
            },
            {
                "type": 32,
                "target": ['workstream_1', 'workstream_2', 'workstream_3', 'workstream_4']
            },
            {
                "type": 9,
                "target": ['milestone_1', 'milestone_2', 'milestone_3']
            },
            {
                "type": 11,
                "target": ['decision_1', 'decision_2']
            },
            {
                "type": 12,
                "target": ['content_1', 'content_2', 'content_3']
            },
            {
                "type": 15,
                "target": ['event_1']
            }
        ]
    },
    {
        "id": "content_1",
        "object_type": 11,
        "name": "Kickoff Document",
        "properties": {
            "file": null,
            "tags": null,
            "title": "Kickoff Document",
            "source": null,
            "status": null,
            "file_size": "2 MB",
            "file_type": null,
            "description": null,
            "date_created": "2025-02-19T09:00:00"
        },
        "relationships": [
            { "type" : 98, "target" : ["user_2"] }
        ]
    },
    {
        "id": "content_2",
        "object_type": 11,
        "name": "Budget Document",
        "properties": {
            "file": null,
            "tags": null,
            "title": "Budget Document",
            "source": null,
            "status": null,
            "file_size": "2 MB",
            "file_type": null,
            "description": null,
            "date_created": "2025-02-19T09:00:00"
        },
        "relationships": [
            { "type" : 98, "target" : ["user_9"] }
        ]
    },
    {
        "id": "content_3",
        "object_type": 11,
        "name": "Move Timeline Document",
        "properties": {
            "file": null,
            "tags": null,
            "title": "Move Timeline Document",
            "source": null,
            "status": null,
            "file_size": "1.5 MB",
            "file_type": null,
            "description": null,
            "date_created": "2025-02-19T09:00:00"
        },
        "relationships": [
             { "type" : 98, "target" : ["user_5"] }
        ]
    }
]);