Instance: observation-gravida-eclaim
InstanceOf: Observation
Title: "ตัวอย่าง Observation: Gravida"
Description: "ผลการตรวจ Gravida โดยใช้ข้อมูลจากชุดข้อมูล e-Claim"
Usage: #example
* meta.source = "eclaim"
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "ผลการตรวจร่างกาย"
* code
  * coding[0] = $LNC#11996-6 "[#] Pregnancies"
  * coding[+] = $SCT#161732006 "Gravida"
  * text = "ครรภ์ที่"
* subject = Reference(Patient/patient-eclaim)
* encounter = Reference(Encounter/encounter-ipd-eclaim)
* effectiveDateTime =  "2021-04-02"
* valueInteger = 2