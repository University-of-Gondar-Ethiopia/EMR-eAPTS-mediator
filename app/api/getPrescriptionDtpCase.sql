SELECT
     ob.value_text as value
FROM
     obs ob
     INNER JOIN orders ord ON ob.order_id = ord.order_id
WHERE
     ob.concept_id = (
          SELECT
               concept_id
          FROM
               concept_name
          WHERE
               name = 'DTP Case'
               AND concept_name_type = 'FULLY_SPECIFIED'
               AND locale = 'en'
          LIMIT
               1
     )
     AND ord.order_number = ${order_number};