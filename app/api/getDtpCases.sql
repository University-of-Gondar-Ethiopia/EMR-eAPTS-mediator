SELECT
    COUNT(obs_id) as "status"
FROM
    obs
WHERE
    concept_id = 25531
    AND order_id = ${order_id};
