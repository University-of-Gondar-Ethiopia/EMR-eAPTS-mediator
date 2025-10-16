select distinct
          concat(pn.given_name,' ', ifnull(pn.middle_name,'')) as name,
          pi.identifier as identifier,
          concat("",p.uuid) as uuid,
          concat("",v.uuid) as activeVisitUuid,
          IF(va.value_reference = "Admitted", "true", "false") as hasBeenAdmitted
        from visit v
        join person_name pn on v.patient_id = pn.person_id and pn.voided = 0
        join patient_identifier pi on v.patient_id = pi.patient_id
        join patient_identifier_type pit on pi.identifier_type = pit.patient_identifier_type_id
        join global_property gp on gp.property="bahmni.primaryIdentifierType" and gp.property_value=pit.uuid
        join person p on p.person_id = v.patient_id
        join obs ob on v.patient_id = ob.person_id
        join orders ors on ob.person_id = ors.patient_id and ob.order_id = ors.order_id and ors.order_type_id = 2
        join users u on ors.creator = u.user_id and ob.order_id = ors.order_id and ob.concept_id = 68568
        join provider pr on pr.uuid = ${provider_uuid} and ors.orderer = pr.provider_id
        join location l on l.uuid = ${visit_location_uuid} and v.location_id = l.location_id
        left outer join visit_attribute va on va.visit_id = v.visit_id and va.attribute_type_id = (
          select visit_attribute_type_id from visit_attribute_type where name="Admission Status"
        ) and va.voided = 0
        where v.date_stopped is null AND v.voided = 0;