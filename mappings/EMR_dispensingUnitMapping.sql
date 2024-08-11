-- entity_mapping_type

INSERT INTO
    entity_mapping_type
VALUES
    (
        5,
        "visitType_drugDispensingUnit",
        uuid(),
        "org.openmrs.VisitType",
        "org.openmrs.Location",
        now()
    );


-- entity_mapping_type
INSERT INTO
    entity_mapping (
        uuid,
        entity_mapping_type_id,
        entity1_uuid,
        entity2_uuid,
        date_created
    )
VALUES
    (
        uuid(),
        5,
        "966a7899-96c2-41c4-aef0-d57a1d6b04ce",
        "4bdd3a5b-9b4f-4162-97db-bdebd52b7291",
        now()
    );