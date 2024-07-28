SELECT
    DATE_FORMAT(ord.date_created, '%Y-%m-%d %T.%f') AS prescriptionDate,
    ord.uuid AS rowGuid,
    do.dose AS dose,
    do.duration AS numberOfDuration,
    ord.order_id AS orderNumber,
    SUBSTRING_INDEX(SUBSTRING_INDEX(do.dosing_instructions, ':"', -1), '"}', 1) AS additionalNote,
    do.quantity AS quantity,
    ord.patient_id,
    (
        SELECT
            uuid
        FROM
            concept
        WHERE
            concept_id = (
                SELECT
                    concept_id
                FROM
                    order_frequency
                WHERE
                    order_frequency_id = do.frequency
                LIMIT
                    1
            )
    ) AS frequencyTypeId,
    (
        SELECT
            uuid
        FROM
            concept
        WHERE
            concept_id = do.route
        LIMIT
            1
    ) AS administrationId,
    d.uuid AS itemUnitId,
    do.duration_units AS duration_units,
    u.user_id AS prescriber_registrationNumber,
    upn.given_name AS prescriber_firstName,
    upn.family_name AS prescriber_lastName,
    upn.middle_name AS prescriber_middleName,
    (
        SELECT
            role
        FROM
            user_role
        WHERE
            user_id = u.user_id
        GROUP BY
            u.user_id
        LIMIT
            1
    ) AS precriber_role,
    (
        SELECT
            uuid
        FROM
            provider
        WHERE
            person_id = u.person_id
        LIMIT
            1
    ) AS prescriber_rowGuid,
    pe.uuid AS patient_rowGuid,
    pe.gender AS sex,
    TIMESTAMPDIFF(YEAR, pe.birthdate, CURDATE()) AS age,
    (
        SELECT
            uuid
        FROM
            address_hierarchy_entry
        WHERE
            name = pa.state_province
            AND level_id = 3
        LIMIT
            1
    ) AS region,
    (
        SELECT
            uuid
        FROM
            address_hierarchy_entry
        WHERE
            name = pa.county_district
        LIMIT
            1
    ) AS zone,
    (
        SELECT
            name
        FROM
            concept_name
        WHERE
            concept_id = do.dose_units
            AND concept_name_type = 'FULLY_SPECIFIED'
    ) AS dose_units,
    (
        SELECT
            uuid
        FROM
            address_hierarchy_entry
        WHERE
            name = pa.address3
        LIMIT
            1
    ) AS woredaId,
    pa.address2 AS kebele,
    pa.address1 AS houseNumber,
    pi.identifier AS cardNumber,
    (
        SELECT
            uuid
        FROM
            concept
        WHERE
            concept_id = pat_payment.value
        LIMIT
            1
    ) AS paymentType,
    pat_phone.value AS phoneNumber,
    pa.person_id AS person_id,
    (
        SELECT
            name
        FROM
            concept_name
        WHERE
            concept_id = pat_credit.value
        LIMIT
            1
    ) AS sponserName,
    vt.uuid AS patientTypeId,
    o.value_numeric AS weight,
    en.encounter_id,
    pn.given_name AS firstName,
    pn.middle_name AS middleName,
    pn.family_name AS lastName,
    obs_diagnosis.value_coded AS diagnosisID,
    diag.uuid AS diagnosisUUID,
    diag.name AS diagnosisName,
    o.comments AS additionalInfo,
    enc_count.order_count AS numberOfOrders
FROM
    orders ord
    JOIN drug_order do ON do.order_id = ord.order_id
    JOIN drug d ON d.drug_id = do.drug_inventory_id
    JOIN users u ON ord.creator = u.user_id
    JOIN person_name upn ON u.person_id = upn.person_id
    JOIN encounter en ON ord.encounter_id = en.encounter_id
    JOIN visit v ON en.visit_id = v.visit_id
    JOIN visit_type vt ON v.visit_type_id = vt.visit_type_id
    JOIN patient p ON ord.patient_id = p.patient_id
    JOIN person_name pn ON p.patient_id = pn.person_id
    JOIN patient_identifier pi ON p.patient_id = pi.patient_id
    JOIN person pe ON p.patient_id = pe.person_id
    LEFT JOIN person_attribute pat_payment ON pat_payment.person_id = pe.person_id
    AND pat_payment.person_attribute_type_id = (
        SELECT
            person_attribute_type_id
        FROM
            person_attribute_type
        WHERE
            name = 'PaymentMethod'
    )
    LEFT JOIN person_attribute pat_phone ON pat_phone.person_id = pe.person_id
    AND pat_phone.person_attribute_type_id = (
        SELECT
            person_attribute_type_id
        FROM
            person_attribute_type
        WHERE
            name = 'PatientPhoneNumber'
    )
    LEFT JOIN person_attribute pat_credit ON pat_credit.person_id = pe.person_id
    AND pat_credit.person_attribute_type_id IN (
        SELECT
            person_attribute_type_id
        FROM
            person_attribute_type
        WHERE
            name = 'Sponsor'
    )
    LEFT JOIN person_address pa ON pe.person_id = pa.person_id
    LEFT JOIN obs o ON en.encounter_id = o.encounter_id
    AND o.concept_id = (
        SELECT
            concept_id
        FROM
            concept_name
        WHERE
            name = 'WEIGHT'
        LIMIT
            1
    )
    LEFT JOIN obs obs_diagnosis ON obs_diagnosis.person_id = p.patient_id
    AND obs_diagnosis.concept_id IN (
        SELECT
            concept_id
        FROM
            concept_name
        WHERE
            name = 'Coded Diagnosis'
    )
    LEFT JOIN (
        SELECT
            c.uuid,
            cn.name,
            c.concept_id
        FROM
            concept c
            JOIN concept_name cn ON cn.concept_id = c.concept_id
    ) diag ON diag.concept_id = obs_diagnosis.value_coded
    LEFT JOIN (
        SELECT
            encounter_id,
            COUNT(order_id) AS order_count
        FROM
            orders
        GROUP BY
            encounter_id 
    
    ) enc_count ON enc_count.encounter_id = en.encounter_id
WHERE
    do.order_id > ${orderNumber} 
limit
    100