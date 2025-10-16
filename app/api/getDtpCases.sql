SELECT
    COUNT(obs_id) as "status"
FROM
    obs
WHERE
    concept_id = 68568
    AND order_id = ${order_id};
