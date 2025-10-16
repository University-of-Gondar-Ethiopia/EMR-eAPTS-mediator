#!/bin/bash

# MySQL credentials
USER="root"
PASSWORD="adminAdmin!123"
DB="openmrs"
CONTAINER=bahmni-standard-openmrsdb-1

# Run the update query
docker exec -i $CONTAINER mysql -u $USER -p$PASSWORD -D $DB -e "
UPDATE visit AS v
JOIN (
  SELECT v1.visit_id,
         (
           SELECT v2.visit_type_id
           FROM visit v2
           WHERE v2.patient_id = v1.patient_id
             AND v2.visit_id < v1.visit_id
             AND v2.visit_type_id <> 10
           ORDER BY v2.date_started DESC, v2.visit_id DESC
           LIMIT 1
         ) AS new_visit_type
  FROM visit v1
  WHERE v1.visit_type_id = 10
    AND v1.date_stopped IS NULL
) AS t ON v.visit_id = t.visit_id
SET v.visit_type_id = t.new_visit_type
WHERE t.new_visit_type IS NOT NULL;
"