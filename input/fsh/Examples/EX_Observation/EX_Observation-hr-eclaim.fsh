Instance: observation-hr-eclaim
InstanceOf: Observation
Title: "ตัวอย่าง Observation: HR"
Description: "ผลการตรวจ Heart Rate (HR) โดยใช้ข้อมูลจากชุดข้อมูล e-Claim"
Usage: #example
* meta.source = "eclaim"
* status = #final
* category = $CS_HL7_ObservationCat#vital-signs "Vital Signs"
  * text = "สัญญาณชีพ"
* code
  * coding[0] = $LNC#8867-4 "Heart rate"
  * coding[+] = $SCT#364075005 "Heart rate"
  * text = "อัตราการเต้นหัวใจ"
* subject = Reference(Patient/patient-eclaim)
* encounter = Reference(Encounter/encounter-opd-eclaim)
* valueQuantity = 44 '/min' "beats/min"