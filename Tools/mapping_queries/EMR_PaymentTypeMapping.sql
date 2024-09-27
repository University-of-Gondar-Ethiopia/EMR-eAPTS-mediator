START TRANSACTION;
CREATE TEMPORARY TABLE temp_concept_ids (concept_id INT);
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Agreement' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '4cfbde1b-ae22-4636-8379-3747c0279704' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'ANC + Delivery + PNC' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = 'b3b9ece5-2f46-4fc1-8ac6-ee93384ece6a' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Anti Malaria' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '828dd16e-a7b3-4b4a-9988-3126725ffe3b' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Anti TB' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '644e9f42-2084-4e69-bc73-093ded529091' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'ART and OI' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '79fd6319-7753-4fdf-b951-9ed67b7f026b' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Cash' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = 'b25e8721-4d82-49e7-8c4e-0b6667eab8aa' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'CBHI' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '390c4b8b-d206-4a9d-9162-e59ffa183440' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Credit' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = 'f72199ee-509f-4087-88cd-c743052b3bae' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Delivery Note' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = 'daa3e4a7-12b6-45e3-ac97-5d97cfbe5383' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Disposal' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '26f0299e-a4ce-e311-9438-22000a1eab0d' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Ending Inventory' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '4c9c1510-cc9c-4373-8dd7-97570bedcc78' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Error Correction' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '490c8c54-46ab-4c26-9c3c-2c8afb734d43' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Fee Waiver' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = 'b1cccf79-ddca-4451-8017-616c6729ec25' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Free' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '4a9afabb-f066-4267-a943-e489409368f3' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Item_Correction' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = 'b78fba3d-116c-46f0-a294-7006796c3011' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Non - Profit' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = 'd35e3892-9062-4c92-9a65-c751e95ecd58' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Other Free' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '2b7b1556-1d35-44e6-8455-01cf42a9e947' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'SAM / MAM/ Others' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = 'dfb91a2f-afb1-4b10-9ad0-ed98c6c716ed' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Social Health Insurance' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = 'dbf32a76-abb5-4fa2-bd95-8a222ce46c07' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Staff' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = 'b45abdf8-98f8-4b00-a8d2-8f388ed5e8b1' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'STV' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = 'f72199ee-509f-4527-88cd-c743052b3b92' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Transfer' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = 'a34da4c6-d382-e411-949f-0e44494874cb' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Vaccine Adjustment' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '99ea3bdb-5faf-4498-9730-4f50930283bf' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
DROP TEMPORARY TABLE temp_concept_ids;
COMMIT;