INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Acetazolamide"),
            "Acetazolamide",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "4419d16e-3f7d-4da7-acd2-953ae0f80d79",
            "250mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Acyclovir"),
            "Acyclovir",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Capsule"),
            123,
            now(),
            0,
            "da7edfc0-a7fb-4dd4-934d-cb0de7bdc656",
            "200mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Amoxicillin"),
            "Amoxicillin",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Capsule"),
            123,
            now(),
            0,
            "f2685d28-267c-4899-99b2-d7580546ba00",
            "500mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Amoxicillin + Clavulanic Acid"),
            "Amoxicillin + Clavulanic Acid",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "d902f73b-7658-47d0-84b9-f110fe1cfeca",
            "500mg + 125mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Atropine Sulphate"),
            "Atropine Sulphate",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Eye Ointment"),
            123,
            now(),
            0,
            "862bff83-5fa1-48af-897f-c8e07904e822",
            "1%"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Ceftriaxone"),
            "Ceftriaxone",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "411bc34e-ec1b-4d7b-8ce5-ccb9239b1505",
            "1gm in Vial"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Chloramphenicol + Dexamethasone"),
            "Chloramphenicol + Dexamethasone",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Eye Drop"),
            123,
            now(),
            0,
            "d9507f33-b759-40a9-8e51-3089af2df404",
            "(0.5% + 0.1%)"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Chloramphenicol"),
            "Chloramphenicol",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Eye Drop"),
            123,
            now(),
            0,
            "90a0020d-94cb-46f1-8b6f-caf4f6e28ee5",
            "1%"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Ciprofloxacin"),
            "Ciprofloxacin",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Eye/Ear drop"),
            123,
            now(),
            0,
            "5405c70f-aa27-4d38-b0c6-e7c2b9fdf628",
            "0.30%"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Cimetidine"),
            "Cimetidine",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "ba0c7310-e03c-447a-9b8a-e5b5db105fbf",
            "200mg/ml in 2ml ampoule"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Dexamethasone"),
            "Dexamethasone",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Eye Drop"),
            123,
            now(),
            0,
            "4cf1ac12-9683-4602-b6cc-311dd55b7acb",
            "0.10%"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Dexamethasone"),
            "Dexamethasone",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Eye/Ear drop"),
            123,
            now(),
            0,
            "a627544e-070e-498d-9ec2-874392206c87",
            "0.10%"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Dexamethasone"),
            "Dexamethasone",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "ea383b1d-a86e-489a-90cf-6fe6b19a7b0e",
            "4mg/ml"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Diclofenac Sodium"),
            "Diclofenac Sodium",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "32e586b5-174a-4690-970e-9e40599ff2ba",
            "25mg/ml in 3ml ampoule"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Diclofenac Sodium"),
            "Diclofenac Sodium",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "c8c0d27d-6f22-49c3-a4e2-3e73a2d8cbff",
            "50mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Doxycycline"),
            "Doxycycline",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Capsule"),
            123,
            now(),
            0,
            "3f1c8c5a-beac-4f25-8576-0d03559c0bcb",
            "100mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Flurbiprofen"),
            "Flurbiprofen",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Eye Drop"),
            123,
            now(),
            0,
            "7d786a16-5bb7-4200-9b61-363ce166c980",
            "0.03%"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Gentamicin"),
            "Gentamicin",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Eye Drop"),
            123,
            now(),
            0,
            "dfe8f952-d7e5-484e-bdff-c346c5909385",
            NULL
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Gentamicin"),
            "Gentamicin",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "1752b70c-0e10-462f-bdc9-90ca590531d8",
            "40mg/2ml in 2ml Ampoule"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Lidocaine HCL"),
            "Lidocaine HCL",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "35911190-c26c-4d5e-9428-9af949edbff7",
            "2% in 20ml"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Lidocaine HCL + Adrenaline"),
            "Lidocaine HCL + Adrenaline",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "746136e8-b223-47bd-927a-93e6b195cd37",
            "(2%+1:200,000IU) in 20ml vial"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Metoclopramide"),
            "Metoclopramide",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "3936941d-d678-4b87-858f-5ab03a6ed122",
            "5mg/ml in 2ml ampoule"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Metronidazole"),
            "Metronidazole",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "6b61ddba-466c-436b-9e9a-df96bcab4bd7",
            "250mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Metronidazole"),
            "Metronidazole",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Intarvenous Infusion"),
            123,
            now(),
            0,
            "089ac445-a53a-4415-b7ae-0c706c43e902",
            "5mg/ml"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Omeperazole"),
            "Omeperazole",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "74a93332-e880-457d-9528-5882032b3a6d",
            "20 mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Oxytetracycline HCl + Hydrocortisone Acetate + Polymixin B Sulphate"),
            "Oxytetracycline HCl + Hydrocortisone Acetate + Polymixin B Sulphate",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Eye/Ear drop"),
            123,
            now(),
            0,
            "825dc0c3-4434-44a9-ad95-41538c2659bd",
            "10mg + 5mg +10,000U/ml in each ml susp."
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Paracetamol"),
            "Paracetamol",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "f3387f1a-e77a-493d-bc59-8b88539439f5",
            "500mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Pilocarpine HCL"),
            "Pilocarpine HCL",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Eye Drop"),
            123,
            now(),
            0,
            "11a9fabc-00df-4a1b-a2ff-36bd289999f9",
            "4%"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Pilocarpine HCL"),
            "Pilocarpine HCL",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Eye Drop"),
            123,
            now(),
            0,
            "5a73e92e-7bf5-4429-882e-486277894493",
            "2%"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Prednisolone"),
            "Prednisolone",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "cf98e6fe-b7cd-4d80-8aa7-1dfe3fbd1840",
            "5 mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Sodium Cromoglycate"),
            "Sodium Cromoglycate",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Eye drop (Solution)"),
            123,
            now(),
            0,
            "0e9e0a46-36e8-4ee5-afa9-a4c6ec4b0c66",
            "0.02"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Timolol Maleate"),
            "Timolol Maleate",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Eye Drop"),
            123,
            now(),
            0,
            "6ea12c7c-e878-424e-aec0-3617a88e1df2",
            "0.5 %"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tramadol HCl"),
            "Tramadol HCl",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "b093d92f-48d4-477a-8d47-aa498a743fe5",
            "50mg/ml in 2ml ampoule"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Triamcinolone Acetonide"),
            "Triamcinolone Acetonide",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "1cfff254-ecf9-4dca-b573-0a9f5bc3c574",
            "40mg/ml in Vial"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tropicamide"),
            "Tropicamide",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Eye Drop"),
            123,
            now(),
            0,
            "c391dd9d-4343-452e-9519-e55dbb32181f",
            "1%"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Vitamin A (Retinol)"),
            "Vitamin A (Retinol)",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Capsule"),
            123,
            now(),
            0,
            "0ed5534d-b776-4e39-b6c1-31945371424d",
            "100,000 IU"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Cat Gut Chromic"),
            "Cat Gut Chromic",
            NULL,
            123,
            now(),
            0,
            "e68ce89c-5b5a-4a7a-b8a1-a6a396b417db",
            "Gauge 4.0(0) 75cm on 30mm 1/2 Circle Round Bodied Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Cat Gut Chromic"),
            "Cat Gut Chromic",
            NULL,
            123,
            now(),
            0,
            "6dc5764f-ceac-4696-a4a3-bf284dbf6025",
            "Gauge 3.5(2/0) 75cm on 27mm ½  Circle Reverse Cutting Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Cat Gut Chromic"),
            "Cat Gut Chromic",
            NULL,
            123,
            now(),
            0,
            "1750b56b-2f62-4a77-a675-e2542c1074b3",
            "Gauge 6.0(2) 75cm on 35mm 1/2 Circle Round Bodied Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Cat Gut Chromic"),
            "Cat Gut Chromic",
            NULL,
            123,
            now(),
            0,
            "fac97b8f-3614-4e1e-b919-13c788c686b7",
            "Gauge 3.5(2/0) 70cm on 26mm 1/2 Circle Round Bodied Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Cat Gut Chromic"),
            "Cat Gut Chromic",
            NULL,
            123,
            now(),
            0,
            "5fdb239f-4c7a-4355-a7d2-810f2426ec9f",
            "Gauge 3.0(3/0) 75cm on 32mm 1/2 Circle Round Bodied Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Cat Gut Chromic"),
            "Cat Gut Chromic",
            NULL,
            123,
            now(),
            0,
            "19006b9e-5843-4343-ae48-49e9d94b584d",
            "Gauge 2.0(4/0) 75cm on 15mm 1/2 Circle Round Bodied Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Mersilk  Braided Black"),
            "Mersilk  Braided Black",
            NULL,
            123,
            now(),
            0,
            "9cd73452-a500-45cf-9b71-9d0c463e218c",
            "Gauge 3.5(0) 75cm on 32 mm ½  Circle Round Bodied Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Mersilk  Braided Black"),
            "Mersilk  Braided Black",
            NULL,
            123,
            now(),
            0,
            "f86a84c3-aa5f-4c2d-a582-8b7fa3228109",
            "Gauge 3.5(0) 75cm on 32mm 1/2 circle cutting tapper Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Mersilk  Braided Black"),
            "Mersilk  Braided Black",
            NULL,
            123,
            now(),
            0,
            "7e48dbc0-9912-45f6-8b0a-dc2ab0c61cbf",
            "Gauge 4.0(1) 75cm on 30mm 1/2 Circle Round Bodied Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Mersilk  Braided Black"),
            "Mersilk  Braided Black",
            NULL,
            123,
            now(),
            0,
            "ae727252-1851-4923-9f5a-8ed3686b7d08",
            "Gauge 4.0(1) 75cm on 30mm 1/2 circle reverse cutting needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Mersilk  Braided Black"),
            "Mersilk  Braided Black",
            NULL,
            123,
            now(),
            0,
            "4d4e5f53-f3fd-4c03-8fe7-346558fcded0",
            "Gauge 2.0(3/0)75cm on 26mm 1/2 circle rounded bodied  needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Mersilk  Braided Black"),
            "Mersilk  Braided Black",
            NULL,
            123,
            now(),
            0,
            "6981f5e2-5441-4b56-a261-1946b9f465c1",
            "Gauge 2.0(3/0) 100cm on 35mm 3/8 Circle Reverse Cutting Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Mersilk  Braided Black"),
            "Mersilk  Braided Black",
            NULL,
            123,
            now(),
            0,
            "27c9f68f-5ec7-4f73-ab82-777d5f6884bf",
            "Gauge 1.5(4/0) 75cm on 20mm 1/2 Circle Round Bodied Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Mersilk  Braided Black"),
            "Mersilk  Braided Black",
            NULL,
            123,
            now(),
            0,
            "fe131c7a-59b9-4d84-9093-d4ee87f661dd",
            "Gauge 1.5(4/0) 75cm on 20mm 1/2 Circle Reverse Cutting Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Polyglycolic acid absorbable braided violet"),
            "Polyglycolic acid absorbable braided violet",
            NULL,
            123,
            now(),
            0,
            "08e9ce3f-b63e-485c-9f4a-648323254739",
            "Gauge 3.5(0) 75cm on 48mm 1/2 Circle Round Bodied Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Polyglycolic acid absorbable braided violet"),
            "Polyglycolic acid absorbable braided violet",
            NULL,
            123,
            now(),
            0,
            "f4fb3f9a-0d4d-4014-812e-9967bd474085",
            "Gauge 4.0(1) 75 cm on 45 mm ½  Circle Round Bodied Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Polyglycolic acid absorbable braided violet"),
            "Polyglycolic acid absorbable braided violet",
            NULL,
            123,
            now(),
            0,
            "aca0b78c-2c93-4ad7-9e4c-026385757029",
            "Gauge 4.0(1) 75cm on 45mm 1/2 Circle cutting taper needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Ceftriaxone"),
            "Ceftriaxone",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "8224005b-d71f-43f3-9898-f7a72548181f",
            "0.5g"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Polyglycolic acid absorbable braided violet"),
            "Polyglycolic acid absorbable braided violet",
            NULL,
            123,
            now(),
            0,
            "c6750033-e96d-42e2-ae49-6721201a4d1f",
            "Gauge 5.0(2) 75cm on 40mm 1/2 circle cutting tapper needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Polyglycolic acid absorbable braided violet"),
            "Polyglycolic acid absorbable braided violet",
            NULL,
            123,
            now(),
            0,
            "317b80e6-e3b0-440d-9f45-e49565f6390e",
            "Gauge 3.0(2/0) 75cm on 26mm 3/8 Circle Reverse cutting needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Polyglycolic acid absorbable braided violet"),
            "Polyglycolic acid absorbable braided violet",
            NULL,
            123,
            now(),
            0,
            "96ac7f30-74c8-4e4c-aaed-48315c6bcc34",
            "Gauge 3.0(2/0) 75cm on 27mm 1/2 Circle Round Bodied Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Polyglycolic acid absorbable braided violet"),
            "Polyglycolic acid absorbable braided violet",
            NULL,
            123,
            now(),
            0,
            "cf172d08-81f2-42ef-b8cb-94afc9bbb60f",
            "Gauge 1.5(4/0) 75cm on 15mm 1/2 circle  reverse cutting needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Polyglycolic acid absorbable braided violet"),
            "Polyglycolic acid absorbable braided violet",
            NULL,
            123,
            now(),
            0,
            "51864b5b-3142-4e0b-a415-a16767605a8a",
            "Gauge 1.5(4/0) 75cm on 15mm 1/2 Circle Round Bodied Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Polyglycolic acid absorbable braided violet"),
            "Polyglycolic acid absorbable braided violet",
            NULL,
            123,
            now(),
            0,
            "f3b2457c-1f50-43e9-8623-65cf5bf397d3",
            "Gauge 1.0(5/0) 45cm on 13mm 1/2 Circle Reverse Cutting Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Polyamide Monofilament"),
            "Polyamide Monofilament",
            NULL,
            123,
            now(),
            0,
            "ac12cbf7-d327-4552-bb39-972abec5ac19",
            "Gauge 0.2 (10/0) 38cm on 6mm 1/3 Circle Spatula Double Armed Rounded Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Dextrose"),
            "Dextrose",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Iv Infusion"),
            123,
            now(),
            0,
            "b8183d98-2b7e-403a-a8ea-eb3026be6fd5",
            "40% in 20ml"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Sodium Chloride (Normal Saline)"),
            "Sodium Chloride (Normal Saline)",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Intravenous Infusion with Giving Set"),
            123,
            now(),
            0,
            "e2af1aa7-c37b-41f7-b12e-9c4f555d8d81",
            "0.009"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Ringer’s Lactate Solution"),
            "Ringer’s Lactate Solution",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Intravenous Infusion with Giving Set"),
            123,
            now(),
            0,
            "2a2e6ef6-eb07-427b-9da2-df9e0b55f052",
            "Each contains; K+ 5.4mEq + Na+ 130.7mEq + Ca++"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Glove Surgical  Latex Sterile"),
            "Glove Surgical  Latex Sterile",
            NULL,
            123,
            now(),
            0,
            "a25ae000-03a3-413b-bb20-5e6297b19385",
            "No.7.5"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Haloperidol"),
            "Haloperidol",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "8cf74d9c-70b0-4f8e-97c8-29113b6e7564",
            "1.5mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Cannula Intravenous Set"),
            "Cannula Intravenous Set",
            NULL,
            123,
            now(),
            0,
            "75250064-1265-4ade-acee-fbdc38990375",
            "20G "
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Cannula Intravenous Set (IV Cannula) "),
            "Cannula Intravenous Set (IV Cannula) ",
            NULL,
            123,
            now(),
            0,
            "e1208ad9-12d7-4ddd-87e3-ff937db836ec",
            "24G"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Cannula Intravenous Set (IV Cannula) "),
            "Cannula Intravenous Set (IV Cannula) ",
            NULL,
            123,
            now(),
            0,
            "4f2a8105-d8f8-4dcc-822d-6dd5f9296c82",
            "18G "
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Cannula Intravenous Set (IV Cannula) "),
            "Cannula Intravenous Set (IV Cannula) ",
            NULL,
            123,
            now(),
            0,
            "c18e30f1-2e9c-470b-aae3-ca40c80e0fc9",
            "20G "
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Syringe (Disposable)"),
            "Syringe (Disposable)",
            NULL,
            123,
            now(),
            0,
            "0c0fc143-753b-4460-8a2a-7d453d78793d",
            "20ml with Needle 20G"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Syringe (Disposable)"),
            "Syringe (Disposable)",
            NULL,
            123,
            now(),
            0,
            "97742d44-8971-4860-b611-ee6414132b3b",
            "10ml with needle 21G"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Syringe (Disposable)"),
            "Syringe (Disposable)",
            NULL,
            123,
            now(),
            0,
            "70071b9f-8ce6-4bcd-9f7d-8623f9529dc1",
            "5ml with needle 21G "
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Syringe Insulin (Disposable)"),
            "Syringe Insulin (Disposable)",
            NULL,
            123,
            now(),
            0,
            "fb30f50f-0643-49b0-88e1-82316391a9ae",
            "1ml on 6mm with Fixed Needle 30G"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Disposable Syringe"),
            "Disposable Syringe",
            NULL,
            123,
            now(),
            0,
            "cb5e0ba5-3129-4960-8b24-1b3d251a5218",
            "50ml with Needle "
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Urine Collecting Bag PVC Latex Product"),
            "Urine Collecting Bag PVC Latex Product",
            NULL,
            123,
            now(),
            0,
            "9e28e796-1c8a-43af-a807-506cb12a19fd",
            "2000ml"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Catheter Foley Silconized Latex Three Ways"),
            "Catheter Foley Silconized Latex Three Ways",
            NULL,
            123,
            now(),
            0,
            "96d36fbe-2a09-4b51-8e6b-25f1bbeecf4a",
            "30-50ml Balloon 18CH"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Catheter Foley Silconized Latex Three Ways"),
            "Catheter Foley Silconized Latex Three Ways",
            NULL,
            123,
            now(),
            0,
            "0551241f-bffa-4682-b3ea-d024e444b61e",
            "30-50ml Balloon 16CH"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Naso Gastric Tube Sterile"),
            "Naso Gastric Tube Sterile",
            NULL,
            123,
            now(),
            0,
            "a9c31ca9-38d7-485d-b55d-6e43b0279730",
            "18CH"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Thyroxine Sodium"),
            "Thyroxine Sodium",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "8cce452e-b77b-4001-b08b-71affcef846d",
            "0.1mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Adhesive Plaster Zinc Oxide"),
            "Adhesive Plaster Zinc Oxide",
            NULL,
            123,
            now(),
            0,
            "7aa78d63-968c-4c87-aa84-a6063b93ebae",
            "7.5cmx5m"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Adhesive Plaster Zinc Oxide"),
            "Adhesive Plaster Zinc Oxide",
            NULL,
            123,
            now(),
            0,
            "276eed2d-a149-448f-999d-fdc92d035da5",
            "7.5cm x 10m"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Adhesive Plaster Zinc Oxide"),
            "Adhesive Plaster Zinc Oxide",
            NULL,
            123,
            now(),
            0,
            "4c080554-584d-4ccd-9200-d8990a68fd5c",
            "12.5cmx10m"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Benzhexol (Trihexyphenidyl HCL)"),
            "Benzhexol (Trihexyphenidyl HCL)",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "50150551-02c1-4ae6-bf45-4264033cb79c",
            "5mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Polyglycolic acid absorbable braided violet"),
            "Polyglycolic acid absorbable braided violet",
            NULL,
            123,
            now(),
            0,
            "dac829d4-e567-41e6-b2eb-3eee18602425",
            "Gauge 2.0(3/0) 75cm on 26mm 1/2 Circle Reverse Cutting Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Phenytoin (Diphenhydantoin) Sodium"),
            "Phenytoin (Diphenhydantoin) Sodium",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "b71f133a-c8fd-4b35-b425-4e8a632650cd",
            "100mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Lactulose"),
            "Lactulose",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Solution"),
            123,
            now(),
            0,
            "5df78254-7203-4184-ae13-fbc75bcf345e",
            "10g/15ml"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Allopurinol"),
            "Allopurinol",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "f5d40fdf-33ba-4977-ba8f-aa69bf3c59b2",
            "100mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Amoxicillin"),
            "Amoxicillin",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Capsule"),
            123,
            now(),
            0,
            "8dd8a15a-e2c1-41c5-a9d0-288f17dbb175",
            "250mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Ceftriaxone"),
            "Ceftriaxone",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "7f6c5fd7-4773-4d83-8cf3-ea24f38e46e7",
            "1gm with 10ml diluents"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Metronidazole"),
            "Metronidazole",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Capsule"),
            123,
            now(),
            0,
            "ff86fa82-ed59-4ccd-a3ea-3a0303f1643c",
            "250mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Dexachloropheniramine Malate + Betamethasone"),
            "Dexachloropheniramine Malate + Betamethasone",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "ffa5491b-4f06-405d-867e-57df9888281b",
            "2mg + 0.25mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Ampicillin Sodium"),
            "Ampicillin Sodium",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "2ba18625-3f09-4554-8f63-980931a19965",
            "250mg in Vial"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Polyglycolic acid absorbable braided violet"),
            "Polyglycolic acid absorbable braided violet",
            NULL,
            123,
            now(),
            0,
            "0756218c-c555-4d60-8748-2efa1d37849e",
            "Gauge 3.0(2/0) 75cm on 27mm 1/2 Circle Reverse Cutting Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Mersilk Braided Black"),
            "Mersilk Braided Black",
            NULL,
            123,
            now(),
            0,
            "1be1c3b5-96d8-41c0-94fe-f2096ef6fe26",
            "Gauge 3.0(2/0) 75cm on 33 mm 1/2 Circle Reverse Cutting Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Ceftriaxone"),
            "Ceftriaxone",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Powder for Injection with Diluent"),
            123,
            now(),
            0,
            "84dcfc9c-e970-4945-92c1-a88becb83676",
            "0.5g in Vial"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Prednisolone"),
            "Prednisolone",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "4f665cf1-e8e8-4c33-89c3-ad195ab9185f",
            "5mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Paracetamol"),
            "Paracetamol",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Intravenous Infusion"),
            123,
            now(),
            0,
            "cad1dc79-8d95-4179-bd6e-5a18a3c6a7ba",
            "1g/100ml"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Fluconazole"),
            "Fluconazole",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "19facbfe-6165-4766-8502-ed902c3c3198",
            "100mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Sodium Bicarbonate"),
            "Sodium Bicarbonate",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "88ff7cec-fd5c-4940-953a-59f3bf284e77",
            "8.4% in 10ml ampoule"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Carbamazepine"),
            "Carbamazepine",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "68c439e5-8b02-4268-a974-6cd8ab54c85b",
            "200mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Oral Rehydration Salt"),
            "Oral Rehydration Salt",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Powder"),
            123,
            now(),
            0,
            "3484fd5e-a8df-4c70-addb-d2a1d69c29ba",
            "20.5g for 1 Littre Preparation"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Mebendazole"),
            "Mebendazole",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "d37a00af-7079-410d-91f4-25ccaa796ded",
            "100mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tetracycline"),
            "Tetracycline",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Skin Ointment "),
            123,
            now(),
            0,
            "09fbd4c1-498d-4fcb-ac69-17375d876204",
            "0.03"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Vitamin C (Ascorbic Acid)"),
            "Vitamin C (Ascorbic Acid)",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "d0a45876-8d43-462e-8e45-df6268181ad6",
            "250mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Plaster Of Paris (P.O.P) "),
            "Plaster Of Paris (P.O.P) ",
            NULL,
            123,
            now(),
            0,
            "41b972fa-8bbf-4999-9b76-f6ec0826a9a1",
            "10cm x 3m"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Amoxicillin + Clavulanic Acid"),
            "Amoxicillin + Clavulanic Acid",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Oral Suspension"),
            123,
            now(),
            0,
            "05ea04bc-27fd-4c8b-af26-eb3ea4930439",
            "(125mg + 31.25mg)/5ml"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Cisatracurium"),
            "Cisatracurium",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "76609ad8-1f85-4526-ab4b-770d29b7a12c",
            "2mg/ml in 10 ml Ampoule"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Polyglycolic acid absorbable braided violet"),
            "Polyglycolic acid absorbable braided violet",
            NULL,
            123,
            now(),
            0,
            "7f51b01c-98ec-4f76-a976-1ab92b589f8f",
            "Guage 3.0(2/0) 75cm on 36mm 1/2 Circle Round Bodied Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Mebendazole"),
            "Mebendazole",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "124bcd41-f2d9-43f8-bbf8-3bb55b1c3e3a",
            "100mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Captopril"),
            "Captopril",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "cd6bc93f-a55c-45e4-b7d8-e49313c250da",
            "25mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tenofovir Disproxil Fumerate"),
            "Tenofovir Disproxil Fumerate",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "b19052ac-6863-4544-b999-a866db95890c",
            "300mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tamsulosin"),
            "Tamsulosin",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "3ecbe266-feae-4878-9a60-6ffe1b0b42e6",
            "0.4mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Zinc Acetate "),
            "Zinc Acetate ",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet (Scored & Dispersable)"),
            123,
            now(),
            0,
            "f789340d-1b24-431b-80d0-4cc1e9ccb7e9",
            "20mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Chemical - Barium Sulphate"),
            "Chemical - Barium Sulphate",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Powder"),
            123,
            now(),
            0,
            "dcba7680-a1de-4dea-a573-7ab43c676f5d",
            NULL
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Ringer's Solution"),
            "Ringer's Solution",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Intravenous Infusion with Giving Set"),
            123,
            now(),
            0,
            "0f77d4c2-9eba-4749-87df-7a0cba14698d",
            "Each contains Na+ 147mEq + K+ 4mEq Cl-155mEq"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Dextrose in Normal Saline"),
            "Dextrose in Normal Saline",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Intravenous Infusion with Giving Set"),
            123,
            now(),
            0,
            "b628f292-3d28-4986-96dd-0bf9d1d844ff",
            "(5%  + 0.9%)"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Polyglycolic acid absorbable braided violet"),
            "Polyglycolic acid absorbable braided violet",
            NULL,
            123,
            now(),
            0,
            "034d7045-b851-4661-91e8-f4f8ab6389f9",
            "Gauge 5.0(2) 75cm on 40mm ½  Circle Round Bodied Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Ephedrine Hydrochloride"),
            "Ephedrine Hydrochloride",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "33934b91-2d92-46c2-a3d8-7e90a9c2d234",
            "50mg/ml in 1ml ampoule"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Griseofulvin"),
            "Griseofulvin",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "fe94593c-5304-49d2-b0f1-f328d35625ad",
            "250mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Artemether + Lumefanthrine"),
            "Artemether + Lumefanthrine",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "f679cc04-7e5a-4092-8f2e-2de1c343e6be",
            "20mg + 120mg (6x1)"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Artemether + Lumefanthrine"),
            "Artemether + Lumefanthrine",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "c870ab92-22ee-40ac-8e36-87c0d6698964",
            "20mg + 120mg (6x2)"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Artemether + Lumefanthrine"),
            "Artemether + Lumefanthrine",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "b86ac96b-778b-4501-9b5a-924cd810063c",
            "20mg + 120mg (6x3)"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Acyclovir"),
            "Acyclovir",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "0eb899ed-b39f-4d96-891d-afdea7b4bab6",
            "400mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tetracycline"),
            "Tetracycline",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Eye Ointment"),
            123,
            now(),
            0,
            "780abd30-83a2-4dd3-8593-8f0d96c67d9b",
            "1%"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Cat Gut Chromic"),
            "Cat Gut Chromic",
            NULL,
            123,
            now(),
            0,
            "df1f99da-65b9-43f9-9976-b071c1bdd4dc",
            "gauge 3.0 (3/0) 75cm on 25mm 1/2 circle round bodied needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Cat Gut Chromic"),
            "Cat Gut Chromic",
            NULL,
            123,
            now(),
            0,
            "159c2952-4133-4156-b4af-ffa9458ba0aa",
            "Gauge 3.0(3/0) 75cm on 25mm 1/2 Circle Reverse Cutting Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Cannula Intravenous Set"),
            "Cannula Intravenous Set",
            NULL,
            123,
            now(),
            0,
            "88463fdc-68be-457e-8e43-d329ea9c2ab5",
            "18G "
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Adrenaline (Epinephrine)"),
            "Adrenaline (Epinephrine)",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "8c690c34-0324-4a81-914e-4668f539d152",
            "0.1% in 1ml ampoule"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Aminophyline"),
            "Aminophyline",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "0abedf98-c890-47f4-b493-9420e5cf04e5",
            "250mg/10ml in 10ml Ampoule"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Cloxacillin Sodium"),
            "Cloxacillin Sodium",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Capsule"),
            123,
            now(),
            0,
            "20a02e2c-2c9a-42aa-9065-2981c34fb119",
            "500 mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Diazepam"),
            "Diazepam",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "7191326b-7bad-4c5c-ba91-00c6c7d46f44",
            "5 mg/ml in 2ml ampoule"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Acetylsalicylic Acid"),
            "Acetylsalicylic Acid",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet( Enteric Coated)"),
            123,
            now(),
            0,
            "e92963f9-755b-4d19-8ab4-d1ac3f7e97fe",
            "81mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Albendazole"),
            "Albendazole",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "0e77cc78-2967-4073-9b7f-40d641259af6",
            "400mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Amoxicillin"),
            "Amoxicillin",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Oral Suspension"),
            123,
            now(),
            0,
            "40f84a4f-de54-4b08-9024-2a9380ced280",
            "250mg/5ml"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Atropine Sulphate"),
            "Atropine Sulphate",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "d21d85ee-4c10-49b4-8c59-5e0b30b5e526",
            "1mg/ml in 1ml ampoule"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Disposable Syringe"),
            "Disposable Syringe",
            NULL,
            123,
            now(),
            0,
            "653346e5-3d57-4fab-b07b-e9e420fd0fa1",
            "5ml with needle 21G "
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Beclometasone Dipropionate"),
            "Beclometasone Dipropionate",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Aerosol (Oral Inhalation)"),
            123,
            now(),
            0,
            "9ec191f3-755f-44eb-b671-9e869ee1f67f",
            "100mcg/dose"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Disposable Syringe"),
            "Disposable Syringe",
            NULL,
            123,
            now(),
            0,
            "d5f60201-c630-452a-a3a1-a43ce79f84d5",
            "3 parts , 3ml  with 21G needle "
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Bisacodyl"),
            "Bisacodyl",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "49e297b4-6f01-4b71-8ffb-bc014bb806f4",
            "5mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Calcium Gluconate"),
            "Calcium Gluconate",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "ca643cff-f2eb-4943-9591-3b4b79feaf7f",
            "10% in 10ml ampoule"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Frusemide"),
            "Frusemide",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "bab78997-5923-4677-89b5-0e6aa8983fa2",
            "10mg/ml in 2ml ampoule"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Hydralazine"),
            "Hydralazine",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "23a65aaa-f67b-45b4-a241-0176e689be02",
            "20mg/ml in 1ml ampoule"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Cannula Intravenous Set"),
            "Cannula Intravenous Set",
            NULL,
            123,
            now(),
            0,
            "bc89c02c-0ec9-4763-a355-4e3fd73f32c2",
            "24G"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Hydrocortisone Sodium Succinate"),
            "Hydrocortisone Sodium Succinate",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "d03556c3-84eb-42dc-b002-8242737631ef",
            "100mg in vial"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Castor Oil"),
            "Castor Oil",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Oral Solution"),
            123,
            now(),
            0,
            "c9157409-5461-4a65-8d9b-6f01ed0bd56f",
            NULL
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Ibuprofen"),
            "Ibuprofen",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "6092bf43-269a-44bb-8eca-b83079ec2ee8",
            "400mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Insulin Syringe "),
            "Insulin Syringe ",
            NULL,
            123,
            now(),
            0,
            "8869f7bb-c8d7-49a5-bf0e-46615538e593",
            ",100iu/ml, 1ml with 29G needle, disposable"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Magnesium Sulphate"),
            "Magnesium Sulphate",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "33d0ff7e-2a04-478e-bd77-5d57d60945b1",
            "50% in 10ml ampoule"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Methyldopa"),
            "Methyldopa",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "a0cc558d-3cba-483a-99aa-90765fb86f63",
            "250mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Catheter Foley Silconized Latex Two Ways"),
            "Catheter Foley Silconized Latex Two Ways",
            NULL,
            123,
            now(),
            0,
            "35685984-3ef0-47f1-b152-3be394d75327",
            "30-50ml Balloon 16CH"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Metoclopramide"),
            "Metoclopramide",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "cd672380-b5da-4192-b722-6a90db1112ca",
            "10mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Catheter Foley Silconized Latex Three Ways"),
            "Catheter Foley Silconized Latex Three Ways",
            NULL,
            123,
            now(),
            0,
            "730f92fb-8005-4aaa-8f81-9d82ee9414f5",
            "5-15ml Balloon 14CH"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Catheter Foley Silconized Latex Three Ways"),
            "Catheter Foley Silconized Latex Three Ways",
            NULL,
            123,
            now(),
            0,
            "7fdb6875-a6cf-4775-8664-6f52ae2981f5",
            "5-15ml Balloon 12CH"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Cefazolin Sodium"),
            "Cefazolin Sodium",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "dbd05565-31d9-439c-a3b0-92a89c4a1084",
            "1gm "
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Morphine Sulphate"),
            "Morphine Sulphate",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "f551352a-af5d-415d-9faa-7a7a2ef11fee",
            "10mg/ml"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Nifedipine"),
            "Nifedipine",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "fcd5e9bb-26f6-4a9f-98b9-48c0f7f97e92",
            "20mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Oxytocin"),
            "Oxytocin",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "34d13384-9ba1-41bc-8798-b7854e389bd3",
            "10 Units/ml in 1ml Ampoule"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Chlordiazepoxide + Clindnium Bromide"),
            "Chlordiazepoxide + Clindnium Bromide",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "39ad9da4-9ed3-45d5-b5ce-3d07b2226d4f",
            "(5mg + 2.5mg)"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Aluminium Hydroxide + Magnesium Hydroxide + Simethicon"),
            "Aluminium Hydroxide + Magnesium Hydroxide + Simethicon",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Suspension"),
            123,
            now(),
            0,
            "c72bcc10-54ba-434d-8957-7ee1ebf224e4",
            "(225mg + 200mg + 50mg)/5ml"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Pethidine HCL"),
            "Pethidine HCL",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "2a41ac9c-cc72-45ad-9922-b63c26d541d2",
            "50mg/ml in 2ml ampoule"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Amitriptyline"),
            "Amitriptyline",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "3735c2b1-42a0-452e-8e5c-7b98490fd429",
            "25mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Ciprofloxacin"),
            "Ciprofloxacin",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "2e7bf8ac-7fb8-4e91-ac91-d46bbea6ca27",
            "500mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Ciprofloxacin"),
            "Ciprofloxacin",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Intravenous Infusion (as lactate)"),
            123,
            now(),
            0,
            "d05ba038-08e0-4fb9-8cbd-8e676f0718dc",
            "2mg/ml in 100ml"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Clarithromycin"),
            "Clarithromycin",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "81e909de-53cf-408b-a2a9-7bfa9e09ffd0",
            "500mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Amlodipine"),
            "Amlodipine",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "375de188-bd26-43cc-a113-dfbb0932ce71",
            "10mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Cloxacillin Sodium"),
            "Cloxacillin Sodium",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Syrup"),
            123,
            now(),
            0,
            "1e170402-40ad-4210-9d5d-b25027add348",
            "125 mg/5 ml"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Aluminium Hydroxide + Magnesium Trisilicate"),
            "Aluminium Hydroxide + Magnesium Trisilicate",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet (Chewable)"),
            123,
            now(),
            0,
            "22d40505-e112-4878-b8d2-579d094214d7",
            "120mg + 250mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Clotrimazole"),
            "Clotrimazole",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet (Vaginal)"),
            123,
            now(),
            0,
            "cc3e9f2d-9ce0-4cfe-8eae-6a2f5406c8b6",
            "100mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Cotton Absorbent Wool"),
            "Cotton Absorbent Wool",
            NULL,
            123,
            now(),
            0,
            "34e48986-ace7-439c-a565-d4c6bf825cdb",
            "100gm"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Anti-Rho (D) Immune Globulin"),
            "Anti-Rho (D) Immune Globulin",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "620b1e27-8c75-4077-9107-c26c11b63cd5",
            "300mcg in 2ml Vial"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Atenolol"),
            "Atenolol",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "88054c4c-1e75-46f6-95fc-7f22154adbdf",
            "50mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Atenolol"),
            "Atenolol",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "3692a4e2-c6d8-4157-bd7a-0ac905d298fc",
            "25mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Dextromethorphan Hydrobromide"),
            "Dextromethorphan Hydrobromide",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Syrup"),
            123,
            now(),
            0,
            "9556162c-3f51-4625-9c00-55213c7621d6",
            "15mg/5ml"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Surgical Scalpel Blade "),
            "Surgical Scalpel Blade ",
            NULL,
            123,
            now(),
            0,
            "14ba04e8-360e-4e5c-bcdf-821a734acf45",
            "No.24"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Surgical Scalpel Blade "),
            "Surgical Scalpel Blade ",
            NULL,
            123,
            now(),
            0,
            "b56509a4-4cfb-4388-ade3-a98f2db93da4",
            "No.15"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Diazepam"),
            "Diazepam",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "f23f599c-548f-4579-bbc3-4e10496e28c2",
            "5mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Surgical Scalpel Blade "),
            "Surgical Scalpel Blade ",
            NULL,
            123,
            now(),
            0,
            "9ce9b024-d7e5-4adb-82f8-72be15007c37",
            "No.20"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Surgical Scalpel Blade "),
            "Surgical Scalpel Blade ",
            NULL,
            123,
            now(),
            0,
            "31cf7e00-b1ca-48d6-9f84-b17c79a2141b",
            "No.22"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Surgical Scalpel Blade "),
            "Surgical Scalpel Blade ",
            NULL,
            123,
            now(),
            0,
            "5d47631c-422a-49c7-8397-72f520047785",
            "No.23"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Digoxin"),
            "Digoxin",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "d81cb6aa-503e-47f8-9c6c-c4cf6fff0894",
            "0.25mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tranexamic acid"),
            "Tranexamic acid",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "a96c2af4-aba6-445d-a38c-c84ee0a0ba15",
            "100mg/ml in 10ml Ampoule"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tramadol HCl"),
            "Tramadol HCl",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Capsule"),
            123,
            now(),
            0,
            "1735bb05-8092-4a43-82de-70e7619e3d04",
            "50mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Azithromycine"),
            "Azithromycine",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "5b9a63de-e8a3-4d49-b6a9-f87253eab97e",
            "250mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Bandage Elastic"),
            "Bandage Elastic",
            NULL,
            123,
            now(),
            0,
            "a145ffb6-dba4-4bfc-861b-39834a4693f5",
            "8cm x 5m"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Enoxaparine"),
            "Enoxaparine",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "abbf117b-e981-4284-ba64-c28379aaef74",
            "6000IU/0.6ml in PFS"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Digoxin"),
            "Digoxin",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "ef2cd6cc-d89c-4a17-81b9-91c704e0bb58",
            "0.25mg/ml in 2ml ampoule"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Dimenhydrinate"),
            "Dimenhydrinate",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "9c232bd2-74f8-448a-9a5a-fb7021726eba",
            "50mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Zidovudine"),
            "Zidovudine",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Oral Solution"),
            123,
            now(),
            0,
            "dc14ffdd-4529-4111-9f22-171df0c22e3d",
            "10mg/ml"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Gauze Bandage"),
            "Gauze Bandage",
            NULL,
            123,
            now(),
            0,
            "03279593-6d8c-452f-bee6-833ea0fe24c2",
            "7.5cm x 5m"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Dobutamine"),
            "Dobutamine",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "6eac91be-1093-4f36-b86b-7f8a1fe2ef7c",
            "250mg/20ml in 20ml Vial"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Azithromycin "),
            "Azithromycin ",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "5b14a966-1db6-4ec2-b504-2bda9035b66a",
            "500mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Bupivacaine "),
            "Bupivacaine ",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "bac38dde-212f-4979-9281-30802fd0e50f",
            "0.5% in 10ml ampoule"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Bupivacaine Hydrochloride"),
            "Bupivacaine Hydrochloride",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "40e8fd81-ba64-4867-a98d-778d971afa8f",
            "0.5% in 10ml ampoule"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Enalapril Maleate"),
            "Enalapril Maleate",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "897cb91e-d33b-4a97-81d4-f35ada6e301d",
            "5mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Erythromycin"),
            "Erythromycin",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Oral Suspension"),
            123,
            now(),
            0,
            "3f130339-2f34-4850-b88b-94de606df3a1",
            "200mg/5ml"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Hydrochlorothiazide"),
            "Hydrochlorothiazide",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "48247f48-061d-4e74-88dc-9580762e2b49",
            "25mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Cat Gut Chromic"),
            "Cat Gut Chromic",
            NULL,
            123,
            now(),
            0,
            "056cf756-3c31-45f1-83a4-6740e159cf58",
            "Gauge 5.0(1) 75cm on 30mm 1/2 Circle Round Bodied Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Cannula Intravenous Set"),
            "Cannula Intravenous Set",
            NULL,
            123,
            now(),
            0,
            "3fd46571-21ef-46e5-9c64-a8d9ec2eb978",
            "22G"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Urine Collecting Bag PVC Latex Product"),
            "Urine Collecting Bag PVC Latex Product",
            NULL,
            123,
            now(),
            0,
            "38961ff4-c182-4197-96a4-1d93699e1f03",
            "1000ml"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Fluconazole"),
            "Fluconazole",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "126657c7-71d4-4eb2-ba0b-3602d0b45412",
            "200mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Cat Gut Chromic"),
            "Cat Gut Chromic",
            NULL,
            123,
            now(),
            0,
            "0d549285-56e3-4c46-af41-9cbe1aa851c8",
            "Gauge 4.0(0) 75cm on 30mm 1/2 Circle Reverse Cutting Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Enalapril Maleate"),
            "Enalapril Maleate",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "8e089cd5-bd9b-443a-89fe-493febd0e69c",
            "10mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Cannula Intravenous Set (IV Cannula) "),
            "Cannula Intravenous Set (IV Cannula) ",
            NULL,
            123,
            now(),
            0,
            "96d184f4-814d-47bf-9be2-54c8534610ac",
            "22G"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Folic Acid"),
            "Folic Acid",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "e2ec78c3-a56a-474a-a0cc-e51426f3d990",
            "5mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Cat Gut Chromic"),
            "Cat Gut Chromic",
            NULL,
            123,
            now(),
            0,
            "6ee3bd74-3c16-4146-becb-180f26534117",
            "Gauge 3.0(2/0) 75cm on 27mm  1/2 Circle Reverse Cutting Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Frusemide"),
            "Frusemide",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "528036a0-39e7-4d20-86ba-3b7ee5cd4a83",
            "40mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Indomethacin"),
            "Indomethacin",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Capsule"),
            123,
            now(),
            0,
            "48645f5a-0d7e-4fad-b13c-790181f67bb4",
            "25mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Mannitol"),
            "Mannitol",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Intravenous Infusion"),
            123,
            now(),
            0,
            "fae67bfb-d08b-4def-b775-a6ce5a0b42f8",
            "20% in250ml Ampoule"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Cat Gut Chromic"),
            "Cat Gut Chromic",
            NULL,
            123,
            now(),
            0,
            "849d4c3c-ee52-49fc-944c-adcb5fdce7e2",
            "Gauge 5.0(1) 75cm on 48mm 1/2 Circle Reverse Cutting Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Metronidazole"),
            "Metronidazole",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Oral Suspension"),
            123,
            now(),
            0,
            "e7459e43-0eae-41cb-970c-37164959efd3",
            "125mg/5ml"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Miconazole Nitrate"),
            "Miconazole Nitrate",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet (Vaginal)"),
            123,
            now(),
            0,
            "ce7b06dd-0087-43a7-9ff5-7bebfaafed85",
            "200mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Naso Gastric Tube Sterile"),
            "Naso Gastric Tube Sterile",
            NULL,
            123,
            now(),
            0,
            "ffcdbe59-5e20-4ab9-8ddc-b01429593e89",
            "16CH"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Naso Gastric Tube Sterile"),
            "Naso Gastric Tube Sterile",
            NULL,
            123,
            now(),
            0,
            "6a724c11-1002-487b-a7da-b29541f7f465",
            "4CH"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Naso Gastric Tube Sterile"),
            "Naso Gastric Tube Sterile",
            NULL,
            123,
            now(),
            0,
            "761204df-16de-4c33-80d5-e0380f72ad89",
            "8CH"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Cat Gut Chromic"),
            "Cat Gut Chromic",
            NULL,
            123,
            now(),
            0,
            "7b2ec5e2-ae59-45c5-a654-47a142bf4410",
            "Gauge 6.0(2) 75cm on 35mm 1/2 Circle Reverse Cutting Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Naso Gastric Tube Sterile"),
            "Naso Gastric Tube Sterile",
            NULL,
            123,
            now(),
            0,
            "fe3aea57-f32a-42dc-92da-6f70e436529e",
            "6CH"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Naso Gastric Tube Sterile"),
            "Naso Gastric Tube Sterile",
            NULL,
            123,
            now(),
            0,
            "c3d70c03-1211-48a0-9c27-ef1487be9083",
            "12CH"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Cat Gut Chromic"),
            "Cat Gut Chromic",
            NULL,
            123,
            now(),
            0,
            "79604214-a42b-4d35-bd30-0ea715271b1a",
            "Gauge 2.0(4/0) 75cm on 38mm 1/2 Circle Reverse Cutting Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Colostomy Bag Adhesive  Regulator Closed"),
            "Colostomy Bag Adhesive  Regulator Closed",
            NULL,
            123,
            now(),
            0,
            "56f78f06-2e5c-41db-8aa5-9b9b6578e3f1",
            "30mm Opening, adult opec medium"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Catheter Condom Latex Medium"),
            "Catheter Condom Latex Medium",
            NULL,
            123,
            now(),
            0,
            "7065a0ca-7e32-4829-a8c8-b2ded79b8f38",
            "28mm"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Cat Gut Chromic"),
            "Cat Gut Chromic",
            NULL,
            123,
            now(),
            0,
            "56da9ab6-32f1-43f6-a55d-06f408a23449",
            "Gauge 7.0(3) 75cm on 48mm 1/2 Circle Round Bodied Needle   "
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Cat Gut Chromic"),
            "Cat Gut Chromic",
            NULL,
            123,
            now(),
            0,
            "0f3d31b3-992e-427e-a917-c8db4ec53a3e",
            "Gauge 6.5(3) 75cm on 48mm 1/2 Circle Round Bodied Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Dexamethasone"),
            "Dexamethasone",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "eee8bc53-c573-4ffa-86d1-0d2c01efe688",
            "4mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Nitrofurazone"),
            "Nitrofurazone",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Ointment"),
            123,
            now(),
            0,
            "fc8d4f2a-f8c0-4913-9f8f-fe6173044699",
            "0.002"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Omeperazole"),
            "Omeperazole",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Capsule (Enclosing Enteric Coated Granules)"),
            123,
            now(),
            0,
            "d54abcb1-1953-445b-9c9e-b1971c98408f",
            "20 mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Omeperazole"),
            "Omeperazole",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "304cab00-91be-4fc3-a5da-37a424421809",
            "4mg/ml in 10ml"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Pantoprazole"),
            "Pantoprazole",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet (enteric coated)"),
            123,
            now(),
            0,
            "e517a033-bf43-4d9d-9cf2-ca067e3fb941",
            "40mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Paracetamol"),
            "Paracetamol",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Syrup"),
            123,
            now(),
            0,
            "ae74d1c0-fdfe-477e-9353-3ae853a6b272",
            "120mg/5ml"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Paracetamol"),
            "Paracetamol",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Suppository "),
            123,
            now(),
            0,
            "a0d47d93-a3dc-46f2-8717-bc6465bba6ee",
            "125mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Paracetamol"),
            "Paracetamol",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "17a4b343-a9a0-4a97-9f51-daca18685b79",
            "100mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Penicillin G, Benzanthin"),
            "Penicillin G, Benzanthin",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "6f8583e0-f2fd-4d7c-9ad3-fd329d5e1f48",
            "2.4  MIU"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Potassium Chloride"),
            "Potassium Chloride",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "d73a2e2a-ab23-4fe9-9780-973786f8715a",
            "150mg/ml in 10ml ampoule"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Potassium Chloride"),
            "Potassium Chloride",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "5ab494f1-bfb7-4980-a74f-157f2644601d",
            "600mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Chlorpheniramine Maleate"),
            "Chlorpheniramine Maleate",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "0554d85e-9973-4c75-80f7-66b09edc35a7",
            "4mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Promethazine HCL"),
            "Promethazine HCL",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "7329a963-fe6c-461e-a855-edbb726559c2",
            "25mg/ml in 2ml "
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Praziquantel"),
            "Praziquantel",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "e1239202-65c9-41e9-b6e2-e2a3432d4680",
            "600mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Salbutamol (Albuterol)"),
            "Salbutamol (Albuterol)",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Aerosol (Oral Inhalation)"),
            123,
            now(),
            0,
            "80daa25a-d28c-45a0-9816-2adbd9374975",
            "0.1mg/dose"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Cloxacillin Sodium"),
            "Cloxacillin Sodium",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Capsule"),
            123,
            now(),
            0,
            "02021418-af9b-449b-996e-b35dd78e1955",
            "250mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Spironolactone"),
            "Spironolactone",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "0e09edd4-a194-461c-a010-aa44bd1c50db",
            "25mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Sulphamethoxazole + Trimethoprim"),
            "Sulphamethoxazole + Trimethoprim",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Mixture"),
            123,
            now(),
            0,
            "4965ee63-ff82-4af4-ab89-692958991be4",
            "(200mg + 40mg)/5ml"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Ampicillin Sodium"),
            "Ampicillin Sodium",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "96453d23-20f0-4b36-bc91-15a7090a197d",
            "500mg in Vial"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Amoxicillin"),
            "Amoxicillin",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet (Dispersible)"),
            123,
            now(),
            0,
            "17d7e632-2653-4837-9a5a-e49de2ac0630",
            "250mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Dopamine Hydrochloride"),
            "Dopamine Hydrochloride",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "9a84cb32-2104-4674-94d8-973dbc621438",
            "40mg/ml in 5ml Ampoule"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Theophylline + Ephedrine"),
            "Theophylline + Ephedrine",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "27afe117-425b-4cf2-b47d-9ea742966d06",
            "(120mg + 11mg)"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tinidazole"),
            "Tinidazole",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "d2799411-029b-4f84-a955-4a2156d6379c",
            "500 mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Drainage Chest Tube"),
            "Drainage Chest Tube",
            NULL,
            123,
            now(),
            0,
            "a8cdd087-12de-4745-b44b-87626ecc57f2",
            "28FG"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Vancomycine"),
            "Vancomycine",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "382c9bfc-18d9-46b5-9ec4-b37b8468d271",
            "1gm in Vial"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Drainage Chest Tube"),
            "Drainage Chest Tube",
            NULL,
            123,
            now(),
            0,
            "e70dfbf3-7cc9-4940-8541-5709710e9120",
            "32FG"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Vitamin B Complex Preparations"),
            "Vitamin B Complex Preparations",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "cf6fa0b5-1c03-4d0b-9fbf-b0f6906b3885",
            NULL
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Vitamin B1 + Vitamin B6 + Vitamin B12"),
            "Vitamin B1 + Vitamin B6 + Vitamin B12",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "54ce56d0-b212-49e7-997c-c19bbdf9fd8b",
            "(100mg + 200mg + 1000mcg)"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Fluphenazine Decanoate"),
            "Fluphenazine Decanoate",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection (Depot.oily)"),
            123,
            now(),
            0,
            "6a4103ad-6dcc-4019-b102-ea4ff03d063e",
            "25 mg/ml in 2ml Ampoule"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Vitamin K1 (Phytomenadione)"),
            "Vitamin K1 (Phytomenadione)",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "2199ac27-83ac-4f82-98a7-cee0f87a6128",
            "10mg/ml in 1ml ampoule"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Warfarin Sodium"),
            "Warfarin Sodium",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "67df59f2-0f33-47aa-8875-88021049b31e",
            "5mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Auto Disposable Syringe"),
            "Auto Disposable Syringe",
            NULL,
            123,
            now(),
            0,
            "10cb9c7e-d2b2-4357-b272-4b32ec625c31",
            "2ml with Needle 21G of 100"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Gauze Bandage"),
            "Gauze Bandage",
            NULL,
            123,
            now(),
            0,
            "6157c65f-164d-44a4-a7e4-6d7796b256de",
            "12.5cm x 5m"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Sodium Bicarbonate"),
            "Sodium Bicarbonate",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "e4d65541-0282-4efd-82c5-aadc760bd178",
            "8.4% in 20ml ampoule "
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Glibenclamide"),
            "Glibenclamide",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "dcfe4e7f-1437-4136-b6ae-e26ed0f96b17",
            "5mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Haloperidol"),
            "Haloperidol",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "896b282d-2f1b-4da5-9eda-40dd59e894ac",
            "5mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Haloperidol"),
            "Haloperidol",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "a6a2d361-7f68-4045-bcc9-69a5ec225017",
            "5mg/ml in 1ml Ampule"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Hydrocortisone Sodium Succinate"),
            "Hydrocortisone Sodium Succinate",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "3bbce688-ebf8-42e0-ad3a-dd7fe181af7f",
            "50mg/ml in 2ml ampoule"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Hyoscine (Scopolamine) Butylbromide"),
            "Hyoscine (Scopolamine) Butylbromide",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "985eea4a-7d8c-45f3-893c-7bb020bf16c7",
            "20mg/ml in 1ml ampoule"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Hyoscine (Scopolamine) Butylbromide"),
            "Hyoscine (Scopolamine) Butylbromide",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "07b06f00-21cd-4ea5-aaed-6e611415372d",
            "10mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Insulin Soluble Human"),
            "Insulin Soluble Human",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection(Solution)"),
            123,
            now(),
            0,
            "5f24e64f-7bde-46c1-8811-9f4e955dd459",
            "100IU/ml in 10ml Vial"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Mersilk  Braided Black"),
            "Mersilk  Braided Black",
            NULL,
            123,
            now(),
            0,
            "0e070035-7255-4b4e-a06c-ba842086f25c",
            "Gauge 2.0(3/0) 75cm on 35mm 1/2 Circle Round Bodied Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Insulin Isophane Human"),
            "Insulin Isophane Human",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection(Suspension)"),
            123,
            now(),
            0,
            "6deeed5c-1c7a-484a-b88c-c51817cdb617",
            "100IU/ml in 10ml Vial"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Metformin"),
            "Metformin",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "c2273e55-e980-4bb7-83bb-9fd771542bbc",
            "500mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Mersilk  Braided Black"),
            "Mersilk  Braided Black",
            NULL,
            123,
            now(),
            0,
            "6bdbcd77-eada-4b79-812c-da219521f71e",
            "Gauge 6.0(3) 75cm on 38mm 1/2 Circle Reverse Cutting Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Mersilk  Braided Black"),
            "Mersilk  Braided Black",
            NULL,
            123,
            now(),
            0,
            "e44aca7a-cf86-496b-816a-f06809b75ec7",
            "Gauge 3.0(2/0) 75cm on 35mm  1/2 Circle Round Bodied Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Mersilk  Braided Black"),
            "Mersilk  Braided Black",
            NULL,
            123,
            now(),
            0,
            "9f512179-0667-4341-8016-71ba9958d356",
            "Gauge 1.5(4/0) 75cm on 19mm 1/2 Circle Reverse Cutting Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Mersilk  Braided Black"),
            "Mersilk  Braided Black",
            NULL,
            123,
            now(),
            0,
            "d87c279d-eb19-4371-9d5f-5753df6c7080",
            "Gauge 4.0(1) 75cm on 35mm 1/2 Circle  Reverse Cutting Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Mersilk  Braided Black"),
            "Mersilk  Braided Black",
            NULL,
            123,
            now(),
            0,
            "18b3d769-a1fc-4342-80fa-376a46c6ace7",
            "Gauge 5.0(2) 75cm on 38mm  1/2 Circle Reverse Cutting Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Mersilk  Braided Black"),
            "Mersilk  Braided Black",
            NULL,
            123,
            now(),
            0,
            "3c4d0309-262b-4e91-847f-758984fe8137",
            "Gauge 4.0(1) 75cm on 38mm 1/2 Circle Round Bodied Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Mersilk Black Braided Black"),
            "Mersilk Black Braided Black",
            NULL,
            123,
            now(),
            0,
            "a225cfcd-ac8d-43d4-bf6d-f3f2e73c5d93",
            "Gauge 3.0 (2/0) 75cm on 35mm 1/2 Circle Reverse Cutting Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Mersilk  Braided Black"),
            "Mersilk  Braided Black",
            NULL,
            123,
            now(),
            0,
            "d13b38eb-ba60-4467-8135-de3ef858b1e3",
            "Gauge 3.0(2/0) 75cm on 33mm 1/2 Circle Round Bodied Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Norfloxacin"),
            "Norfloxacin",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "28ff157d-d55a-4e52-b63e-bc2d67b18fbc",
            "400mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Phenobarbitone (Phenobarbital)"),
            "Phenobarbitone (Phenobarbital)",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "3b26c0cc-952f-4ac9-8bf7-31be888efa71",
            "100mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Phenobarbitone (Phenobarbital)"),
            "Phenobarbitone (Phenobarbital)",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "c9c38091-b8de-4f2e-8db6-98ee076c21f4",
            "30mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Polyglycolic acid absorbable braided violet"),
            "Polyglycolic acid absorbable braided violet",
            NULL,
            123,
            now(),
            0,
            "4e8c0057-b75b-457a-a6c5-fc250cf6640b",
            "Gauge 1.0(5/0) 45cm on 13mm 1/2 Circle Round Bodied Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Polyglycolic acid absorbable braided violet"),
            "Polyglycolic acid absorbable braided violet",
            NULL,
            123,
            now(),
            0,
            "f813c45e-7902-4b38-b04b-0e2dbdc22209",
            "Gauge 0.5(7/0) 45cm on 13mm 1/2 Circle Round Bodied taper needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Polyglycolic acid absorbable braided violet"),
            "Polyglycolic acid absorbable braided violet",
            NULL,
            123,
            now(),
            0,
            "125db0b2-7db4-4ad4-b988-1c50dd577878",
            "Gauge 0.7(6/0) 30m on 12mm 1/2 circle  cutting  taper needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Polyglycolic acid absorbable braided violet"),
            "Polyglycolic acid absorbable braided violet",
            NULL,
            123,
            now(),
            0,
            "0fdca425-8233-4b91-bad2-04af6506d9db",
            "Gauge 1.5(4/0) 75cm on 15mm 1/2 Circle Reverse cutting needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Polyglycolic acid absorbable braided violet"),
            "Polyglycolic acid absorbable braided violet",
            NULL,
            123,
            now(),
            0,
            "a18e7129-641e-4b22-a58a-92903927298b",
            "Gauge 4.0(1) 75cm on 45mm 1/2 Circle Cutting Taper Heavy Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Propofol"),
            "Propofol",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "8e9c9b7c-fc52-4051-8839-b5665e9f0183",
            "10mg/ml in 20ml "
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Syringe (Disposable)"),
            "Syringe (Disposable)",
            NULL,
            123,
            now(),
            0,
            "33e1d3d9-a626-4729-8fbd-60a26f54a147",
            "3ml with Needle 21G"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tetracycline"),
            "Tetracycline",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Eye Ointment"),
            123,
            now(),
            0,
            "7ae1ab58-b0dd-4957-a2b7-58ed171387e6",
            "0.01"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Thiopental Sodium"),
            "Thiopental Sodium",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Powder for injection"),
            123,
            now(),
            0,
            "a960ac50-c8d5-4aee-903d-670a2d78bddd",
            "0.5 g"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Thiopental Sodium"),
            "Thiopental Sodium",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Powder for injection"),
            123,
            now(),
            0,
            "d7a94c95-92c2-45bf-b8e4-32c07e12e4c5",
            "1g in vial"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Neostigmine"),
            "Neostigmine",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "a6f54b0d-e950-4cce-a9de-4cc0e62048d1",
            "2.5mg/ml in 1ml Ampoule"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Polyglycolic acid absorbable braided violet"),
            "Polyglycolic acid absorbable braided violet",
            NULL,
            123,
            now(),
            0,
            "55faf7b9-5124-44ea-88d8-de27d09250f2",
            "Gauge 0.4(8/0) 45cm on 8mm 1/2 Circle Round Bodied Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tetanus Antitoxin (TAT), Equine"),
            "Tetanus Antitoxin (TAT), Equine",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "19860e35-2109-4e31-8916-facaed28fcd1",
            "1,500 IU/ml in 1ml Ampoule"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Snake Venom Antiserum Polyvalent"),
            "Snake Venom Antiserum Polyvalent",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "35b36131-5aee-4f14-b907-1ff19dc5af2e",
            NULL
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Acyclovir"),
            "Acyclovir",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Topical Cream"),
            123,
            now(),
            0,
            "49f07ff1-dd50-4e84-bc76-5671e6d5d061",
            "5%"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Albendazole"),
            "Albendazole",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Oral Suspension"),
            123,
            now(),
            0,
            "84b0391d-62c3-4d43-97ae-934a2dd57c56",
            "100mg/5ml"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Albendazole"),
            "Albendazole",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "7c56d211-c623-4207-b151-ff1e9c59cd6d",
            "200mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Azithromycine"),
            "Azithromycine",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Oral Suspension"),
            123,
            now(),
            0,
            "c68801bc-2ad5-4ea5-b007-1de879621fea",
            "200mg/5ml"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Amoxicillin + Clavulanic Acid"),
            "Amoxicillin + Clavulanic Acid",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Oral Suspension"),
            123,
            now(),
            0,
            "002f0494-c0f0-4118-8184-597c0a4fd895",
            "(250mg + 62.5mg)/5ml"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Anti-haemorrhoidal (Betamethasone Valerate + Phenylephrine HCl + Lidocaine HCl)"),
            "Anti-haemorrhoidal (Betamethasone Valerate + Phenylephrine HCl + Lidocaine HCl)",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Ointment"),
            123,
            now(),
            0,
            "143f94c0-774f-41f2-9b12-13dc97cffd4f",
            "(0.5mg + 1mg + 25mg)"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Cloxacillin Sodium"),
            "Cloxacillin Sodium",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Oral Suspension"),
            123,
            now(),
            0,
            "6943c039-ba7e-4187-8865-e1eeec9bc1ec",
            "250mg/5ml"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Benzyl Benzoate"),
            "Benzyl Benzoate",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Lotion"),
            123,
            now(),
            0,
            "35701ce8-f982-4606-bc71-1ed236ee2b62",
            "25%"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Betamethosone Diproprionate"),
            "Betamethosone Diproprionate",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Ointment"),
            123,
            now(),
            0,
            "23bf1bfa-635c-4978-891f-469c9badd88c",
            "0.05%"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Betametasone Valarate"),
            "Betametasone Valarate",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Cream"),
            123,
            now(),
            0,
            "9c4743de-59f4-4df7-845d-0b6c9253a8a0",
            "0.1%"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Ceftriaxone"),
            "Ceftriaxone",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Powder for Injection with Diluent"),
            123,
            now(),
            0,
            "74afafc7-7d54-4ae7-8977-00f9c06979ef",
            "1g in vial"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Cephalexine"),
            "Cephalexine",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Oral Suspension"),
            123,
            now(),
            0,
            "c7194562-8f32-4f60-84b6-cf4d3133398b",
            "250mg/5ml"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Cephalexine"),
            "Cephalexine",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Oral Suspension"),
            123,
            now(),
            0,
            "777302ca-0757-410d-a50c-0faf6883d546",
            "125mg/5ml"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Cephalexine"),
            "Cephalexine",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Capsule"),
            123,
            now(),
            0,
            "5d1f0e71-e698-4c58-b1f7-dee8800b8b51",
            "250mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Cephalexine"),
            "Cephalexine",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Capsule"),
            123,
            now(),
            0,
            "e082ad2f-8efd-4142-83c6-a065b673542e",
            "500mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Chloroquine Phosphate"),
            "Chloroquine Phosphate",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "a1498308-be70-4f6b-931e-a563e933472f",
            "250mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Chlorpheniramine Maleate"),
            "Chlorpheniramine Maleate",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Syrup"),
            123,
            now(),
            0,
            "b7bba141-2c85-41e8-853b-9f642d06e771",
            "2mg/5ml"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Clindamycin"),
            "Clindamycin",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Gel"),
            123,
            now(),
            0,
            "22308b6c-2f6f-4f57-8a56-1b2259c90352",
            "1%  of 20gm"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Clomiphene Citrate"),
            "Clomiphene Citrate",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "2e84ebb1-00d9-4b8f-8987-428a8293cee9",
            "50mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Desloratadine"),
            "Desloratadine",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Syrup"),
            123,
            now(),
            0,
            "0e3bacf5-b00f-4855-9a9a-af3a4b4f65f0",
            "0.5 mg/mL"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Diloxanide Furoate"),
            "Diloxanide Furoate",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "cbc6c33f-00c2-424d-96a6-b5a008b99ae7",
            "500mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Nevirapine"),
            "Nevirapine",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Oral Suspension"),
            123,
            now(),
            0,
            "756c50e5-bb31-4620-ba20-e1f951ee289f",
            "10mg/ml"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Diphenhydramine Hydrochloride"),
            "Diphenhydramine Hydrochloride",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Elixir"),
            123,
            now(),
            0,
            "a0b82f1c-61bf-4ef1-9444-52b083f661de",
            "12.5mg/5ml"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Fusidic Acid"),
            "Fusidic Acid",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Cream"),
            123,
            now(),
            0,
            "f5a2fb27-8652-4eda-a46a-23486ffad3af",
            "2%"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Iopamidol injection solution,370mg/50ml vial"),
            "Iopamidol injection solution,370mg/50ml vial",
            NULL,
            123,
            now(),
            0,
            "ca07e016-876e-4541-a456-d8225a592965",
            "376% iodine"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Griseofulvin"),
            "Griseofulvin",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "913621d1-f5a9-4339-ad0e-5b90d747c845",
            "125mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Hydrocortisone Acetate"),
            "Hydrocortisone Acetate",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Topical Ointment"),
            123,
            now(),
            0,
            "692f23ed-e323-4314-952e-e6d1e53ea6ad",
            "1%"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Hydrocortisone Acetate"),
            "Hydrocortisone Acetate",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Topical Cream"),
            123,
            now(),
            0,
            "7def4373-e74b-4c76-bb4d-2e2b673517aa",
            "1%"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Ketoconazole"),
            "Ketoconazole",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Cream"),
            123,
            now(),
            0,
            "b8d75dcf-ca13-417b-855b-e771404b83c5",
            "2%"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Ketoconazole"),
            "Ketoconazole",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "9655c8d2-1220-4c4a-8ff9-92a4d40e92ea",
            "200mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Loratadine"),
            "Loratadine",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "9e846a31-47f9-491e-b5f3-ee522f210d6a",
            "10mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Mebendazole"),
            "Mebendazole",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Oral Suspension"),
            123,
            now(),
            0,
            "bd801d9e-9914-49e1-9b72-435298aad7bb",
            "100mg/5ml"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Mupirocin"),
            "Mupirocin",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Ointment"),
            123,
            now(),
            0,
            "434eaf78-373c-42f9-a892-c56afddd06b8",
            "0.02"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Sulphamethoxazole + Trimethoprim"),
            "Sulphamethoxazole + Trimethoprim",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "20c66d34-5a48-482b-b132-5ba37c7a65e8",
            "(800 mg + 160 mg)"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Oral Rehydration Salt"),
            "Oral Rehydration Salt",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Powder"),
            123,
            now(),
            0,
            "3d937aba-d915-4f73-ab40-f597c309c1e6",
            "20.7g for 1 Littre Preparation"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Primaquine Phosphate"),
            "Primaquine Phosphate",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "12c84b53-f884-42df-83a9-14d32808d233",
            "7.5mg base"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Sulphur"),
            "Sulphur",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Ointment"),
            123,
            now(),
            0,
            "83fa0178-fbe3-4a4c-99fe-9885cdd2b668",
            "0.1"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Xylometazoline HCL "),
            "Xylometazoline HCL ",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Solution (Nasal Drops)"),
            123,
            now(),
            0,
            "306eba74-c52c-49f6-9300-3ea96a684e00",
            "0.0005"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Zinc Oxide"),
            "Zinc Oxide",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Ointment"),
            123,
            now(),
            0,
            "12b71d02-ef23-487d-8202-826c292197f2",
            "0.15"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Mersilk  Braided Black"),
            "Mersilk  Braided Black",
            NULL,
            123,
            now(),
            0,
            "6d952b36-feb5-4d97-80ff-7f207105e145",
            "Gauge 5.0(2) 75cm on 38mm 1/2 Circle Round Body Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Drainage Chest  Tube"),
            "Drainage Chest  Tube",
            NULL,
            123,
            now(),
            0,
            "cd5e8dad-0cc9-4456-bc73-bdd774300474",
            "18FG"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Fentanyl"),
            "Fentanyl",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "261d2cc5-1419-481e-b17e-7eea768abd48",
            "0.05mg/ml in 2ml Ampoule"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Poly Diaxone Monofilament Violet"),
            "Poly Diaxone Monofilament Violet",
            NULL,
            123,
            now(),
            0,
            "8702d164-f9be-4a61-838d-d3c6671fbb35",
            "Gauge 2.0(3/0)70cm on 40mm 1/2 circle Round bodied taper needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Polyglycolic acid absorbable braided violet"),
            "Polyglycolic acid absorbable braided violet",
            NULL,
            123,
            now(),
            0,
            "6678708b-7c8b-4eb0-9203-ccf574bb38fa",
            "Gauge 2.0(3/0) 75cm on 30mm 1/2 Circle Reverse Cutting"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Polyglycolic acid absorbable braided violet"),
            "Polyglycolic acid absorbable braided violet",
            NULL,
            123,
            now(),
            0,
            "2c623e0c-fa10-4b6b-a74a-a4dc66761a5b",
            "Gauge 2.0(3/0)75cm on 26mm 1/2 circle rounded bodied  needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Salbutamol (Albuterol)"),
            "Salbutamol (Albuterol)",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "36721b44-3dc5-4436-8609-a15d3cb1d757",
            "2mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Insuline Isophane Biphasic (Soluble/Isophane Mixture)"),
            "Insuline Isophane Biphasic (Soluble/Isophane Mixture)",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection (Suspension)"),
            123,
            now(),
            0,
            "02c1c223-6621-4d40-a803-f54adafb00b3",
            "(30 + 70)IU/ml in 10ml Vial"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Sodium Valproate"),
            "Sodium Valproate",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "44091382-20bc-429f-a640-b7d289599bfb",
            "200mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Chlorpromazine HCL"),
            "Chlorpromazine HCL",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "1355e553-f864-4f07-9c09-c9ffd33e45de",
            "100mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Chlorpromazine HCL"),
            "Chlorpromazine HCL",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "6ff826ca-07d0-4c95-9cfb-5496364ea1f8",
            "25mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Bromazepam"),
            "Bromazepam",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "a10d63d4-cfd9-42d8-ab17-a4588eadd200",
            "3mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Olanzapine"),
            "Olanzapine",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "afad53ec-020d-4e4f-9bdf-25378da6c476",
            "5mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Levodopa + Carbidopa"),
            "Levodopa + Carbidopa",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "522853a3-848b-4085-b627-83aa41587708",
            "(250mg + 25mg)"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Imipramine"),
            "Imipramine",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "617b7281-e4ee-4bd6-87e0-24b516948508",
            "25mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Sertaline HCL"),
            "Sertaline HCL",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "c6a45f7a-df38-448a-8454-c713f62361c6",
            "50mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Fluoxetine"),
            "Fluoxetine",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Capsule"),
            123,
            now(),
            0,
            "3a9116dc-309b-42b5-bb8e-c1a97178f820",
            "20mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Suxamethonium Chloride (Succinylcholine)"),
            "Suxamethonium Chloride (Succinylcholine)",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Powder for injection"),
            123,
            now(),
            0,
            "d4c9ad8e-3b12-46e4-bda3-561648c5316e",
            "50 mg/ml in 10ml Vial"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Glimepride"),
            "Glimepride",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "b71312e9-7c8d-489d-98eb-b963cb9e50a8",
            "1mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Glimepride"),
            "Glimepride",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "f9461d44-c433-4910-9f39-9479d58d8521",
            "4mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Glimepride"),
            "Glimepride",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "261f0d7a-5ace-4284-8472-2874b27842b2",
            "2mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Amlodipine"),
            "Amlodipine",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "3b30a543-d717-47e6-aaf1-ac72eac6bac9",
            "5mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Propranolol"),
            "Propranolol",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "becc772b-5140-4c27-b53c-1910ab6b927c",
            "40mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Syringe Insulin (Disposable)"),
            "Syringe Insulin (Disposable)",
            NULL,
            123,
            now(),
            0,
            "cdc08105-7ca3-475f-9046-b67d1b90c9d3",
            "1ml on 8mm with Fixed Needle 30G"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Clopidogrel"),
            "Clopidogrel",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "f8119fbc-5cc0-4c49-95e8-c3e4f375287d",
            "75mg "
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Propranolol"),
            "Propranolol",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "e6795b4a-f976-4af1-8a1d-54c371644c6d",
            "10mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Carbimazole"),
            "Carbimazole",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "257915ea-653c-440c-8e7f-426a54fceb26",
            "5mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Vecuronium Bromide"),
            "Vecuronium Bromide",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Powder for injection"),
            123,
            now(),
            0,
            "a00cba44-3f24-4e8c-8bb3-0aa53cd0ecfa",
            "10 mg in vial"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Mersilk  Braided Black"),
            "Mersilk  Braided Black",
            NULL,
            123,
            now(),
            0,
            "8808df56-c04c-4aec-9487-02a9dd5f9597",
            "Gauge 5.0(2) 75cm on 38mm 1/2 Circle Round Body Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Propylthiouracil"),
            "Propylthiouracil",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "18693ea3-585e-408c-8589-77a2a0abe44f",
            "100mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Ketamine HCL"),
            "Ketamine HCL",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "657ab055-0a53-4255-97f6-f24831427222",
            "50 mg/ml in 10ml Ampoule"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Glyceryl Trinitrate (Nitroglycerine)"),
            "Glyceryl Trinitrate (Nitroglycerine)",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "0bd0da35-9ddb-453c-8d1e-537bdf0f9e32",
            "0.5mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Artesunate"),
            "Artesunate",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection with 5% Sodium Bicarbonate and 0.9% Sodium Chloride"),
            123,
            now(),
            0,
            "16cf30d5-24b4-4b3e-88ce-19ec1ea19772",
            "60mg/ml in 1ml Ampoule"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Bisoprolol"),
            "Bisoprolol",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "af44d0ad-fab2-4287-b614-61189ccf40c4",
            "5mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Poly Diaxone Monofilament Violet"),
            "Poly Diaxone Monofilament Violet",
            NULL,
            123,
            now(),
            0,
            "46bd355c-a3c6-4165-bb18-8e418bdb2c5e",
            "Gauge 5.0(2) 90cm on 40mm 1/2 circle round bodied taper needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Polyglycolic acid absorbable braided violet"),
            "Polyglycolic acid absorbable braided violet",
            NULL,
            123,
            now(),
            0,
            "46c79f6f-6bcb-4f46-a8f2-6ae79c976a20",
            "Gauge 5.0(2) 75 cm on 50mm1/2 circle Round Bodied Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Polyglycolic acid absorbable braided violet"),
            "Polyglycolic acid absorbable braided violet",
            NULL,
            123,
            now(),
            0,
            "ef3bd36c-2c09-4cf6-8051-f4bdf2e098d6",
            "Guage 2.0(3/0)75cm on 26mm, Reverse Cutting Tapper Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Ferrous Sulphate"),
            "Ferrous Sulphate",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "c5b8173e-b345-4cd0-b962-8a5b7dc5f0b5",
            "325mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Syringe(AD) "),
            "Syringe(AD) ",
            NULL,
            123,
            now(),
            0,
            "ae9ddb12-fc4e-48a4-929f-033f1b0f6ad0",
            "5ml with needle 21G "
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Syringe(AD) "),
            "Syringe(AD) ",
            NULL,
            123,
            now(),
            0,
            "c3a44cda-b6bd-4e03-81ae-d37fca602d64",
            "1ml with needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Syringe (Disposable)"),
            "Syringe (Disposable)",
            NULL,
            123,
            now(),
            0,
            "f94dd5a8-2454-46f1-b1cc-7e2998768ccf",
            "(Sterile) 3 Parts, 20ml Luer fitting with 21G  Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Neostigmine"),
            "Neostigmine",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "9a931775-7834-4583-868e-312ae8280bcb",
            "0.5mg/ml in 1ml Ampoule"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Cetrizine"),
            "Cetrizine",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "e33977f1-034e-41b8-9fba-41c6e3763a5e",
            "10mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Amoxicillin + Clavulanic Acid"),
            "Amoxicillin + Clavulanic Acid",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet (Film Coated)"),
            123,
            now(),
            0,
            "7d80a70e-81ee-4eed-b0d3-eee483506ee8",
            "500mg + 125mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Metoprolol"),
            "Metoprolol",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "c5481e08-ead5-4902-ad64-9fef16a550be",
            "50mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Glove Surgical  Latex Sterile Powder Free"),
            "Glove Surgical  Latex Sterile Powder Free",
            NULL,
            123,
            now(),
            0,
            "102e33b2-f59e-4e8e-87fd-868f7e33b832",
            "No. 7.5"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Loperamide HCL"),
            "Loperamide HCL",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Capsule"),
            123,
            now(),
            0,
            "36eb39b9-3dee-40e2-8441-ed4bb3e2cf50",
            "2mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Polyglycolic acid absorbable braided violet"),
            "Polyglycolic acid absorbable braided violet",
            NULL,
            123,
            now(),
            0,
            "bf8f50e2-9836-4342-b8ad-86d329d7a4f9",
            "Guage 3.5(0)75cm on 48mm 1/2c Round Bodied  Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Cat Gut Chromic"),
            "Cat Gut Chromic",
            NULL,
            123,
            now(),
            0,
            "77d3989a-4594-48c3-8837-812b5f14cf8c",
            "Gauge 5.0(1) 75cm on 48mm 1/2 Circle Round Bodied Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Gentamicin"),
            "Gentamicin",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "c6dea830-cfca-4967-9253-571561d92dd6",
            "40mg/ml in 2ml Ampoule"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Polyglycolic acid absorbable braided violet"),
            "Polyglycolic acid absorbable braided violet",
            NULL,
            123,
            now(),
            0,
            "9f3fa09c-a070-4417-b954-458f1e6b5c01",
            "Gauge 2.0(3/0) 75cm on 19mm reverse cutting Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Plaster Of Paris (P.O.P) "),
            "Plaster Of Paris (P.O.P) ",
            NULL,
            123,
            now(),
            0,
            "d6dacd63-0b27-43a6-a5c5-8d6965a4e791",
            "15 cm x 3m"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Sulphamethoxazole + Trimethoprim"),
            "Sulphamethoxazole + Trimethoprim",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "724cb7f1-2d81-4339-b16b-bc6eff41b27c",
            "(400mg + 80mg)"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Polyglycolic acid absorbable braided violet"),
            "Polyglycolic acid absorbable braided violet",
            NULL,
            123,
            now(),
            0,
            "20356d46-36e5-4a92-a0aa-33ba12af3355",
            "Gauge 3.5(0) 75cm on 50mm 1/2 Circle Round Bodied needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Permethrine"),
            "Permethrine",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Cream"),
            123,
            now(),
            0,
            "6511d01e-5e75-446a-96f0-919de5972827",
            "0.05"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Mersilk  Braided Black"),
            "Mersilk  Braided Black",
            NULL,
            123,
            now(),
            0,
            "c0f68995-77e1-4335-b450-d5a2a25a5ba4",
            "Gauge 3.5(0) 75cm on  27mm 1/2 Circle Reverse Cutting Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Mersilk  Braided Black"),
            "Mersilk  Braided Black",
            NULL,
            123,
            now(),
            0,
            "fcc2d8c2-71a4-447c-b255-3e2c45299047",
            "Gauge 3.0(2/0) 75cm on 24mm 1/2 Circle Reverse Cutting Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Ceftazidime"),
            "Ceftazidime",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Powder for injection"),
            123,
            now(),
            0,
            "b3a81b94-04fb-421b-b9fb-7b97c4df619b",
            "1g in vial"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Cefepime"),
            "Cefepime",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Powder for injection"),
            123,
            now(),
            0,
            "fc0fd6ed-4b82-4fc0-bb80-6a1d4a00ef72",
            "1gm in Vial"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Heparin Sodium"),
            "Heparin Sodium",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "7fe61129-ad55-4d1b-ae67-c9a298619d87",
            "5000IU/ml in 5ml Ampoule"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Indomethacin"),
            "Indomethacin",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Suppository "),
            123,
            now(),
            0,
            "acdd2d77-390c-45ac-b161-22b6a9a63db7",
            "100mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Dexamethasone"),
            "Dexamethasone",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Topical Ointment"),
            123,
            now(),
            0,
            "ebbd54e1-d987-41af-a820-507c0a433bab",
            "0.25%"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "MultiVitamin "),
            "MultiVitamin ",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Syrup"),
            123,
            now(),
            0,
            "2fa70025-264d-42eb-ba34-ff5780cbc4ed",
            NULL
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Clotrimazole"),
            "Clotrimazole",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Cream"),
            123,
            now(),
            0,
            "dabd4d3a-0d27-48b7-89fd-13a2801efa8e",
            "1%"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Ampicillin Sodium"),
            "Ampicillin Sodium",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "53c0ad97-6a3f-44f8-8370-6aff79950fb6",
            "1gm in Vial"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Meri Silk Black"),
            "Meri Silk Black",
            NULL,
            123,
            now(),
            0,
            "2d85b506-2bc3-42a9-bcd8-b34139ab9431",
            "Gauge 3.0 (2/0) 75cm on 35mm 1/2 Circle Round Bodied Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Ceftriaxone"),
            "Ceftriaxone",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Powder for injection"),
            123,
            now(),
            0,
            "6787dadb-c3ae-4394-be38-fff510d6d058",
            "250mg in Vial"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Dextrose in Water"),
            "Dextrose in Water",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Intravenous Infusion with Giving Set"),
            123,
            now(),
            0,
            "7c83a587-bc3b-4a51-9322-106006bbf9b5",
            "5%"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Oxytetracycline HCl + Hydrocortisone Acetate + Polymixin B Sulphate"),
            "Oxytetracycline HCl + Hydrocortisone Acetate + Polymixin B Sulphate",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Eye/Ear drop"),
            123,
            now(),
            0,
            "4b24d8f4-d61e-4214-ac2c-20a05a02f88a",
            "5mg+15mg+ 10.000 Units in each ml"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Cloxacillin Sodium"),
            "Cloxacillin Sodium",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Powder for injection"),
            123,
            now(),
            0,
            "ca78be18-002b-4342-99f7-63323879b53f",
            "500mg in Vial"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Amoxicillin"),
            "Amoxicillin",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Oral Suspension"),
            123,
            now(),
            0,
            "531330a1-fbdb-407a-9a0f-ee8ddeff3907",
            "125mg/5ml"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Phenytoin (Diphenhydantoin) Sodium"),
            "Phenytoin (Diphenhydantoin) Sodium",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "0f312df0-4cfd-4774-9666-a05f3da7a35d",
            "50mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Risperidone"),
            "Risperidone",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "b5898672-10f7-40df-b514-38bb377bac22",
            "4mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Bromocriptine Mesylate"),
            "Bromocriptine Mesylate",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "7f19afa2-68fa-410f-bc9a-cde9a0349b29",
            "2.5mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Polyglycolic acid absorbable braided violet"),
            "Polyglycolic acid absorbable braided violet",
            NULL,
            123,
            now(),
            0,
            "0e4717a8-2c4a-47fd-b25b-7ade610b5a52",
            "Guage 5.0(2) 75cm on 48mm 1/2 Circle Round Bodied  Needle"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Ciprofloxacin + Dexamethasone"),
            "Ciprofloxacin + Dexamethasone",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Eye Drop"),
            123,
            now(),
            0,
            "c1fda8f4-444c-407b-aa10-50af07dc410e",
            "0.3% + 0.1%"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Betamethosone Diproprionate"),
            "Betamethosone Diproprionate",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Topical Cream"),
            123,
            now(),
            0,
            "78974e72-14f8-46f4-b2ef-c059f00b2e37",
            "0.05%"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Surgical Glove"),
            "Surgical Glove",
            NULL,
            123,
            now(),
            0,
            "f61312b8-db9b-4ba9-b456-1c66125c5404",
            "sterile Latex No. 7 "
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Chemical - Gadolinium Chelate"),
            "Chemical - Gadolinium Chelate",
            NULL,
            123,
            now(),
            0,
            "2f5c549d-b027-4f08-8ad7-36987a8cfeb3",
            "1mmol/ml Solution for Injection"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Rectal Tube Rubber With Terminal Size"),
            "Rectal Tube Rubber With Terminal Size",
            NULL,
            123,
            now(),
            0,
            "88886a8e-8536-42e3-af47-a9ec7d70c70a",
            "30CH"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Chloramphenicol"),
            "Chloramphenicol",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Eye Drop"),
            123,
            now(),
            0,
            "906fcc46-3a6b-46e4-a30f-6910f01930d7",
            "0.5%"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Sodium Valproate"),
            "Sodium Valproate",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Syrup"),
            123,
            now(),
            0,
            "0c78ced3-2ea1-4913-beeb-b172fd5afc87",
            "200mg/5ml"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Ibuprofen"),
            "Ibuprofen",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "252fb520-589b-48df-82b3-05b6e5bad7d9",
            "200mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Gauze Bandage"),
            "Gauze Bandage",
            NULL,
            123,
            now(),
            0,
            "79f3a45c-23d1-4505-844f-31170c73277b",
            "5cm x 5m "
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Artemether + Lumefanthrine"),
            "Artemether + Lumefanthrine",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "8370d6dc-16bb-42a6-bafa-03f9cd6841a0",
            "20mg + 120mg (6x4)"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Ergometrine Maleate"),
            "Ergometrine Maleate",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "0502a4cc-ebec-4a13-ac1b-5ed2b4c9cb5a",
            "0.25 mg/ml in 1ml Ampoule"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Cefotaxime Sodium"),
            "Cefotaxime Sodium",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Powder for Injection with Diluent"),
            123,
            now(),
            0,
            "3d60d6ad-30d7-45b1-8ab0-300bbf3c4545",
            "0.5g in Vial"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Penicillin G, Sodium Crystalline"),
            "Penicillin G, Sodium Crystalline",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "c3ed4649-b4b8-4c1a-9c4d-c5b7701c1a51",
            "1 MIU"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Ibuprofen"),
            "Ibuprofen",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Syrup"),
            123,
            now(),
            0,
            "ac4bcde4-708d-443b-904e-db7bfbedadb0",
            "100mg/5ml"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Vancomycin"),
            "Vancomycin",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "b2fd9bb9-b723-4620-9060-034fa9a755b1",
            "500mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Nystatin"),
            "Nystatin",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "bec30e1a-18e5-4a6f-8e70-3075e3161541",
            "500,000 IU"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Amoxicillin + Clavulanic Acid"),
            "Amoxicillin + Clavulanic Acid",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet (Chewable)"),
            123,
            now(),
            0,
            "0f6aa959-2163-4a33-ac32-689e1f7a82af",
            "(125mg + 31.5mg)"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Calamine"),
            "Calamine",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Lotion"),
            123,
            now(),
            0,
            "2a1d6cc1-97d3-4e6f-a964-ce177266ae22",
            "5%"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Miconazole Nitrate"),
            "Miconazole Nitrate",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Cream"),
            123,
            now(),
            0,
            "deee7175-427d-45e7-a351-9a2d2ef5fb92",
            "0.02"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Penicillin G, Benzanthin"),
            "Penicillin G, Benzanthin",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "751818ec-22e3-491b-8241-740d3938e00f",
            "1.2 MIU"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Ferrous + Folic Acid"),
            "Ferrous + Folic Acid",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "4d5b8364-dad3-4f06-8a79-478169972f35",
            "(60mg + 400mcg)"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Zinc Sulphate"),
            "Zinc Sulphate",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "a87907ad-83f5-4969-80b5-d9466aa2bf3f",
            "20mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Risperidone"),
            "Risperidone",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "928cef63-caa7-46ae-8e40-26b927afc2b8",
            "2mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Atrovastatin"),
            "Atrovastatin",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "b1d37c58-827c-4c00-aca4-db147288cb2e",
            "20mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Benzhexol (Trihexyphenidyl HCL)"),
            "Benzhexol (Trihexyphenidyl HCL)",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "03fd34dc-e2a0-4f0e-bd1d-064d38368f64",
            "2mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Noradrenaline"),
            "Noradrenaline",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "66156f5c-c852-4089-ad93-c9e5750a762b",
            "1mg/1ml in 1ml"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Amiodarone"),
            "Amiodarone",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "8f16db74-8e5d-4697-9895-3b364d192a2a",
            "50mg/ml in 3ml Ampoule"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "meropenem"),
            "meropenem",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Powder for Injection with Diluent"),
            123,
            now(),
            0,
            "fcbf6afe-e22a-4065-80f2-0f4190b16df9",
            "1g in vial"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Surgical Glove"),
            "Surgical Glove",
            NULL,
            123,
            now(),
            0,
            "4898eb5e-c45d-4e7f-9d4b-fdc08d6a5213",
            "Sterial Latex No. 7.5 "
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Ferrous Sulphate + Folic Acid"),
            "Ferrous Sulphate + Folic Acid",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "1e5a30ad-627c-4094-904d-eaa6df904d91",
            "(60mg + 400mcg)"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Surgical Glove"),
            "Surgical Glove",
            NULL,
            123,
            now(),
            0,
            "53cf53aa-deb5-4eef-9d56-907f32ec1e1e",
            "No.7.5"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Atrovastatin"),
            "Atrovastatin",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "be020ada-3b9d-4d82-9976-3314c803be17",
            "40mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Ringer's Injection-Solution"),
            "Ringer's Injection-Solution",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "IV Infusion (Injection)"),
            123,
            now(),
            0,
            "531096a5-d126-4718-9d41-85515c12bd00",
            "Each 500ml contains; Na+ 147mEq + K+ 4mEq(500ml) with giving set"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Propylthiouracil"),
            "Propylthiouracil",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "ee0e5f90-5f1f-4669-be94-73ab538fd258",
            "50mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Ankle Support"),
            "Ankle Support",
            NULL,
            123,
            now(),
            0,
            "5872b78c-4207-4f0e-8cba-4ec3313dc940",
            NULL
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Clobetasole Propionate "),
            "Clobetasole Propionate ",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Ointment"),
            123,
            now(),
            0,
            "5e2b79f4-4232-4129-a9d8-f47534fc8971",
            "0.05%w/w"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Fluocinolone Acetonide"),
            "Fluocinolone Acetonide",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Cream"),
            123,
            now(),
            0,
            "209d60b7-bc5b-426d-8ad0-cbee3a3a948e",
            "0.025%"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Acyclovir"),
            "Acyclovir",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Eye Ointment"),
            123,
            now(),
            0,
            "ace6bc04-2bba-4058-b5c7-21b66a366a37",
            "3%"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "MultiVitamin "),
            "MultiVitamin ",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "951b75e8-16aa-4127-9ff7-139c003994c1",
            NULL
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Phenytoin (Diphenhydantoin) Sodium"),
            "Phenytoin (Diphenhydantoin) Sodium",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "64306f7f-cacb-4d4c-980d-4a9a2d727d9b",
            "250mg per 5ml vial liquid"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Vitamine B12 (Cyanocobalamine)"),
            "Vitamine B12 (Cyanocobalamine)",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "eefce713-a877-4430-a05c-e958a9173708",
            "100mcg/ml in 1ml ampoule"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Lamotrigine"),
            "Lamotrigine",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "7862799b-2873-44ad-99f9-5765329b656c",
            "50mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Metoprolol succinate"),
            "Metoprolol succinate",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "dbb78422-75b7-4b38-a14e-f61bb4e2eba2",
            "50mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Syringe (Disposable)"),
            "Syringe (Disposable)",
            NULL,
            123,
            now(),
            0,
            "a23c7ded-9194-4bed-b216-3c34a3799a12",
            "5ml with  Needle 23G"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Nevirapine"),
            "Nevirapine",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Oral Suspension"),
            123,
            now(),
            0,
            "32fdeb40-feae-4a75-b205-90221b7b752a",
            "10mg/1ml"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "meropenem"),
            "meropenem",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Injection"),
            123,
            now(),
            0,
            "9fd9236f-68b4-40a5-8c3a-81819dd27935",
            "1gm "
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Metoprolol succinate"),
            "Metoprolol succinate",
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Tablet"),
            123,
            now(),
            0,
            "1bfdbc7a-96a5-42e4-9aab-c45b94750949",
            "25mg"
        );
INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            (SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "Rectal Tube Rubber With Terminal Size"),
            "Rectal Tube Rubber With Terminal Size",
            NULL,
            123,
            now(),
            0,
            "1e9ccb7b-6d9a-4ffc-88e2-b11afd6f9205",
            "28CH"
        );
