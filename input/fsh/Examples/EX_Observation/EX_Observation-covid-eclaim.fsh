Instance: observation-covid-eclaim
InstanceOf: Observation
Title: "ตัวอย่าง Observation: COVID-19"
Description: "ผลการตรวจ COVID-19 โดยใช้ข้อมูลจากชุดข้อมูล e-Claim"
Usage: #example
* meta.source = "eclaim"
* status = #final
* category = $CS_HL7_ObservationCat#laboratory "Laboratory"
  * text = "ผลการตรวจวิเคราะห์ทางห้องปฏิบัติการ"
* code
  * coding[0] = $SCT#871562009 "Detection of SARS-CoV-2"
  * text = "ผลการตรวจแลป COVID"
* subject = Reference(Patient/patient-eclaim)
* encounter = Reference(Encounter/encounter-ipd-eclaim)
* effectiveDateTime =  "2021-04-02"
* valueCodeableConcept
  * coding[0] = $CS_HL7_ObsInterpret#POS "Positive"
  * coding[+] = $SCT#10828004 "Positive"