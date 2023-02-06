Instance: observation-rr-eclaim
InstanceOf: Observation
Title: "ตัวอย่าง Observation: RR"
Description: "ผลการตรวจ Respiratory Rate (RR) โดยใช้ข้อมูลจากชุดข้อมูล e-Claim"
Usage: #example
* meta.source = "eclaim"
* status = #final
* category = $CS_HL7_ObservationCat#vital-signs "Vital Signs"
  * text = "สัญญาณชีพ"
* code
  * coding[0] = $LNC#9279-1 "Respiratory rate"
  * coding[+] = $SCT#86290005 "Respiratory rate"
  * text = "อัตราการหายใจ"
* subject = Reference(Patient/patient-eclaim)
* encounter = Reference(Encounter/encounter-opd-eclaim)
* valueQuantity = 20 '/min' "breaths/min"