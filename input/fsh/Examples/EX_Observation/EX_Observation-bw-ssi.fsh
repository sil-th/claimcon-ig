Instance: observation-bw-ssi
InstanceOf: Observation
Title: "ตัวอย่าง Observation: BW"
Description: "ผลการตรวจ Body Weight (BW) โดยใช้ข้อมูลจากชุดข้อมูล SSI"
Usage: #example
* meta.source = "ssi"
* status = #final
* category = $CS_HL7_ObservationCat#vital-signs "Vital Signs"
  * text = "สัญญาณชีพ"
* code
  * coding[0] = $LNC#29463-7 "Body weight"
  * coding[+] = $SCT#27113001 "Body weight"
  * text = "น้ำหนักแรกรับ"
* subject = Reference(Patient/patient-ssi)
* encounter = Reference(Encounter/encounter-ssi)
* valueQuantity = 65.00 'kg' "kg"