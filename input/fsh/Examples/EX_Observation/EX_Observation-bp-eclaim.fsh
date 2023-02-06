Instance: observation-bp-eclaim
InstanceOf: Observation
Title: "ตัวอย่าง Observation: BP"
Description: "ผลการตรวจ Blood Pressure (BP) โดยใช้ข้อมูลจากชุดข้อมูล e-Claim"
Usage: #example
* meta.source = "eclaim"
* status = #final
* category = $CS_HL7_ObservationCat#vital-signs "Vital Signs"
  * text = "สัญญาณชีพ"
* code
  * coding[0] = $LNC#35094-2 "Blood pressure panel"
  * coding[+] = $SCT#75367002 "Blood pressure"
  * text = "ความดันโลหิต"
* subject = Reference(Patient/patient-eclaim)
* encounter = Reference(Encounter/encounter-opd-eclaim)
* component[0]
  * code
    * coding[0] = $LNC#8480-6 "Systolic blood pressure"
    * coding[+] = $SCT#271649006 "Systolic blood pressure"
    * text = "ความดันโลหิตค่าตัวบน"
  * valueQuantity = 107 'mm[Hg]' "mmHg"
* component[+]
  * code
    * coding[0] = $LNC#8462-4 "Diastolic blood pressure"
    * coding[+] = $SCT#271650006 "Diastolic blood pressure"
    * text = "ความดันโลหิตค่าตัวล่าง"
  * valueQuantity = 60 'mm[Hg]' "mmHg"