Instance: observation-occupation-eclaim
InstanceOf: Observation
Title: "ตัวอย่าง Observation: Observation"
Description: "ประวัติอาชีพ โดยใช้ข้อมูลจากชุดข้อมูล e-Claim"
Usage: #example
* meta.source = "eclaim"
* status = #final
* category = $CS_HL7_ObservationCat#social-history "Social History"
  * text = "ประวัติทางสังคม"
* code
  * coding[0] = $LNC#11341-5 "History of Occupation"
  * coding[+] = $SCT#184104002 "Patient occupation"
  * text = "ประวัติอาชีพ"
* subject = Reference(Patient/patient-eclaim)
* valueCodeableConcept
  * coding[0] = $CS_THCC_Occupation#9999 "ไม่มีงานทำ"