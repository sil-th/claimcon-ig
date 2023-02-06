Instance: observation-ga-eclaim
InstanceOf: Observation
Title: "ตัวอย่าง Observation: GA"
Description: "ผลการตรวจ Gestational Age (GA) โดยใช้ข้อมูลจากชุดข้อมูล e-Claim"
Usage: #example
* meta.source = "eclaim"
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
* category.text = "ผลการตรวจร่างกาย"
* code.coding[0] = $LNC#57714-8 "Obstetric estimation of gestational age"
* code.coding[+] = $SCT#57036006 "Fetal gestational age"
* code.text = "อายุครรภ์ปัจจุบัน ณ วันที่ตรวจครั้งแรก (สัปดาห์)"
* subject = Reference(Patient/patient-eclaim)
* encounter = Reference(Encounter/encounter-opd-eclaim)
* effectiveDateTime =  "2021-04-02"
* performer.type = "Practitioner"
* performer.identifier.system = "https://terms.sil-th.org/id/th-doctor-id"
* performer.identifier.value = "123456"
* valueQuantity = 44 http://unitsofmeasure.org#wk "สัปดาห์"