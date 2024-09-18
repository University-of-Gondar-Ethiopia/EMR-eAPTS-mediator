SELECT
    c.uuid,
    c.concept_id,
    cn.name,
    cc.name AS "class",
    cc.uuid AS "class_uuid",
    cdt.name AS "datatype",
    cdt.uuid AS "datatype_uuid"
FROM
    concept c
    INNER JOIN concept_name cn ON cn.concept_id = c.concept_id
    AND cn.name = "${concept_name}"
    INNER JOIN concept_class cc ON cc.concept_class_id = c.class_id
    INNER JOIN concept_datatype cdt ON cdt.concept_datatype_id = c.datatype_id
where
    cn.concept_name_type = "FULLY_SPECIFIED";