Instance: observation-bw-eclaim
InstanceOf: Observation
Title: "ตัวอย่าง Observation: BW"
Description: "ผลการตรวจ Body Weight (BW) โดยใช้ข้อมูลจากชุดข้อมูล e-Claim"
Usage: #example
* meta.source = "eclaim"
* status = #final
* category = $CS_HL7_ObservationCat#vital-signs "Vital Signs"
  * text = "สัญญาณชีพ"
* code
  * coding[0] = $LNC#29463-7 "Body weight"
  * coding[+] = $SCT#27113001 "Body weight"
  * text = "น้ำหนักแรกรับ"
* subject = Reference(Patient/patient-eclaim)
* encounter = Reference(Encounter/encounter-ipd-eclaim)
* valueQuantity = 65.00 'kg' "kg"