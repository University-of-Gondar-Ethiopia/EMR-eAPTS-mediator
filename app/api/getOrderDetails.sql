SELECT
    ord.order_number,
    en.uuid as encounter_uuid,
    p.uuid as person_uuid
FROM
    orders ord
    INNER JOIN encounter en ON ord.encounter_id = en.encounter_id
    INNER JOIN person p ON p.person_id = ord.patient_id
    AND en.patient_id = p.person_id
WHERE
    ord.order_id = ${order_id};