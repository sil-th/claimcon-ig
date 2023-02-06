Instance: observation-bt-eclaim
InstanceOf: Observation
Title: "ตัวอย่าง Observation: BT"
Description: "ผลการตรวจ Body Temp (BT) โดยใช้ข้อมูลจากชุดข้อมูล e-Claim"
Usage: #example
* meta.source = "eclaim"
* status = #final
* category = $CS_HL7_ObservationCat#vital-signs "Vital Signs"
  * text = "สัญญาณชีพ"
* code
  * coding[0] = $LNC#8310-5 "Body temperature"
  * coding[+] = $SCT#386725007 "Body temperature"
  * text = "อุณหภูมิร่างกาย"
* subject = Reference(Patient/patient-eclaim)
* encounter = Reference(Encounter/encounter-opd-eclaim)
* valueQuantity = 37 'Cel' "°C"