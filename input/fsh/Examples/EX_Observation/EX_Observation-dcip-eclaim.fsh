Instance: observation-dcip-eclaim
InstanceOf: Observation
Title: "ตัวอย่าง Observation: DCIP"
Description: "ผลการตรวจ DCIP โดยใช้ข้อมูลจากชุดข้อมูล e-Claim"
Usage: #example
* meta.source = "eclaim"
* status = #final
* category = $CS_HL7_ObservationCat#laboratory "Laboratory"
  * text = "ผลการตรวจวิเคราะห์ทางห้องปฏิบัติการ"
* code
  * coding[0] = $LNC#41619-8 "Unstable Hemoglobin [Presence] in Red Blood Cells by Isopropanol stability"
  * coding[+] = $CS_TMLT#300058 "Hemoglobin E [+/-] in Blood by DCIP"
  * text = "การคัดกรอง DCIP/E screen"
* subject = Reference(Patient/patient-eclaim)
* encounter = Reference(Encounter/encounter-ipd-eclaim)
* effectiveDateTime =  "2021-04-02"
* valueCodeableConcept
  * coding[0] = $CS_HL7_ObsInterpret#POS "Positive"
  * coding[+] = $SCT#10828004 "Positive"