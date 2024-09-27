START TRANSACTION;
CREATE TEMPORARY TABLE temp_concept_ids (concept_id INT);
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Ethiopian Federal Police' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = 'b379414d-7fab-4356-9e7c-cf9046dbe6ee' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Hop of Light-Ngo' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '08722ffb-9973-41fc-969d-8c6f9c93a2a9' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'addis zemen' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = 'd67f0364-bbb0-4ba8-a296-5d9a51918046' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Andabet Woreda' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '52286cc2-3286-4e51-8476-d2a6e10840a2' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Debretabor Town' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = 'be7421f4-9637-487b-9fea-2563622d650f' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Dera' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '33cfbc63-9c86-4786-8b8c-c834316ebecb' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Ebinat' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = 'be90b85e-e813-478f-90df-01fe5bbf6e77' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Estie' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '8c3f5320-87e0-42a7-a6ec-7fea7b9f058f' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Farta' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '90e9f401-08af-44d8-85d0-acff36bb3c6f' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Fogera' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '1fcdcca2-4b0c-4ab9-9dff-27b7833d7742' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Guna' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '7f355df5-2c73-46ab-84a2-a0bc0a95169f' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Guna Begeimidr' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '46f7fc86-8296-4661-93a5-240c8944807e' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'lay Gaynt' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '42a583f6-a6fc-4792-b18e-2d69dbdfe40e' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Libokemkem' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = 'f1f3e3f4-ea56-425c-b2a3-ab3b634bee0e' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Meketewa' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '73176621-e964-4721-b23f-f017bbc338d0' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Mierab Estie' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = 'a03daf92-4521-4c63-b44e-dd2146235a92' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Misrak Estie' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = 'aa7504bc-15d3-4dd4-bffe-659acb157a65' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Sedie Muja' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '851cb777-657a-4e29-b5e3-ff43e8781b3b' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Simada' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '0e36c9f8-9c0b-4e8e-adf9-24db0948d598' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'TachGaynt' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = 'c47113bc-e0eb-4e28-a4e7-fb22d7b45ad1' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Woreta Town' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '2d576977-f36f-4c4d-8518-77c9c342bf46' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Sehal Seyemt' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = 'e49ca336-b02a-4a3d-a1a1-7d349868ea2f' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Genda wuha' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '10e9b2e9-38e2-420e-871e-f61770768a60' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Gende Wuha Town' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '077cdda1-a209-4a30-ac07-a6642d9ed2c6' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Adadgn Hager chako' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '92a8bb98-c9b6-4a1b-934f-1394e04f1e5a' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Metema' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '59ea5cb9-e297-4e7d-9355-c2355d27ab6a' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Quara' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '639f18c1-6fa9-429d-b4ab-5f736fdee0fd' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'West Armachiho' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '8d8fff6b-f983-43f2-8a96-4b9e57c21f45' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Midre-genet' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = 'd49da53d-a684-40eb-93c3-1dfa17cde613' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'MSF' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '451d0c82-40c9-405e-8635-fef975c12d43' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Military' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = 'dffbab09-b625-4600-9900-d2ef2eceda7f' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Wogera' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '145b0041-c1ca-4242-ad95-a561938f8357' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Chilga 2' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = 'f3612d00-5d9f-443c-afa9-5d7a5bda202f' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Chilga 1' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '92b13560-9205-42b8-b7a6-3a710930cb9c' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Alefa' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '7db6cc11-a602-49cf-b294-54960a62b692' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'East Belesa' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '97a16a04-3d99-455e-8971-948fa10c8190' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'West Belesa' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '1303ddad-2123-4eb3-b478-5ce98dc696f6' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'East Dembia' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = 'c4791691-5d1e-4347-afdb-1c91a598c368' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Gondar Zuria' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = 'cf302b9b-33c1-46dd-805c-d61d028ea174' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Kinfanze Begela' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '34106a64-7962-459f-af7a-ce414ee80786' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Lay Armachiho' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '27488ff5-cb03-4d12-89d7-859c37416eea' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Mehal Armachiho' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = 'd0dae495-721c-4962-a491-7e03f0e57604' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Tach Armachiho' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '380bda15-76b8-4898-90ed-6732bac31b6d' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Takusa' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '45f5f671-f7d8-4ac0-92c8-be8839561fee' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Aykel town' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '9d20747d-8ca9-4a12-ab96-e0d6f82b3577' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Tegede' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '8a66e4f7-d5b6-4f9f-bf36-8986bab95638' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'West Dembia' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '45a3b680-9605-4c0b-b3f1-6ca921400cb7' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Amhara Liyu Haile Police' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = 'e0c68a05-0412-42bd-bfc8-b0af64116c09' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Amhara reginal Police maseltegna' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '9b7e7011-a71b-4e18-9fe0-6e4085f95cf0' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Adiarkay' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = 'c7784dad-3808-4540-afa0-f197d9cdfaf0' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Dabat' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = 'aa9e1b8b-c233-4725-a1ca-cbf16c7cce72' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Debark Zuria' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = 'd3bc5f9e-7f65-4f4c-83cb-2b01828be0eb' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Telemit' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '43ffeba1-3c31-4037-8597-1c7633088c01' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Janamora' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = 'b8e1bee9-337d-4579-8acc-0ebc5b450899' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Beyeda' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '39ae178a-0746-4c29-8a7d-e7b10cf0ecae' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Debark Town' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = 'a13c16a2-40aa-4770-af88-9e3e43eebdf1' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Gondar Town' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '085ce313-3a77-45c3-b04f-58d4893bf6d1' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Gondar Bekil Factory' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '639029bb-27e2-4d1e-8806-2357d24c5d27' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'University  of Gondar' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '406b88fd-2820-45f6-89ad-7c1fcc0a9ada' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Central Gondar Maremia' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '42566a60-8c92-4c4d-aa7b-b64eeff1cfe5' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Central Gondar Police HO' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '528db730-a5f4-4b16-a23c-66f67216877c' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Gondar Town- Police HO' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = 'd2b1b72e-7dd6-4eb6-9516-cffb4c51d4bd' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Gonder Moha S,C' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '3822a306-6e03-45a7-89be-735359d69ea6' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Dashen Berwory S,C' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '82c705ee-f1e0-420a-a113-60d5ac15d4bf' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'PFSA- Gondar' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = 'ca099101-e4d2-454b-bf74-3d1668676648' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Yenege Tesfa-NGO' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = 'c693ffea-52a1-44ed-ac97-ad73cd6bc5db' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Together we learn-NGO' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = 'c6e09fe3-9be6-4b61-9a5e-d38ca22fa736' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Ethiopian Civil Aviation  socity' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '064e84ac-5e99-482e-a69d-91be1ec93c2d' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Ethiopian Airline' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '8b834f8a-84fe-4ef0-8416-1bc880ad5ea1' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Ethiopian Electric Aoutority-Gonder' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '18e2a621-2681-4ce0-9521-2c952a538210' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Ethiopian Fuel Authority-Gondar' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '516ae62f-8bb2-4d01-9e73-f696c161398c' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Sidetegnichina kesidet temelas Agencyhoch' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '3e062d1f-f5b5-422d-ad63-82ff74750884' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = 'Elfora' AND cn.concept_name_type = 'FULLY_SPECIFIED';
UPDATE concept 
    SET uuid = '642d7762-1417-4d72-893f-62e1529e99b4' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
TRUNCATE TABLE temp_concept_ids;
DROP TEMPORARY TABLE temp_concept_ids;
COMMIT;