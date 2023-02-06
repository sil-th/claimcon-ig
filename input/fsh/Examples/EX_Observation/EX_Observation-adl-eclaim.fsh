Instance: observation-adl-eclaim
InstanceOf: Observation
Title: "ตัวอย่าง Observation: ADL"
Description: "ผลการตรวจ ADL โดยใช้ข้อมูลจากชุดข้อมูล e-Claim"
Usage: #example
* meta.source = "eclaim"
* status = #final
* category = $CS_HL7_ObservationCat#laboratory "Laboratory"
  * text = "ผลการตรวจวิเคราะห์ทางห้องปฏิบัติการ"
* code
  * coding[0] = $LNC#96761-2 "Total score Barthel Index"
  * coding[+] = $SCT#273302005 "Barthel index"
  * text = "Barthel ADL Index"
* subject = Reference(Patient/patient-eclaim)
* encounter = Reference(Encounter/encounter-ipd-eclaim)
* effectiveDateTime =  "2021-04-02"
* valueQuantity = 100 '{score}' "{score}"