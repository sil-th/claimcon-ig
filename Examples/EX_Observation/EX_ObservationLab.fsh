Instance: observation-lab-chol
InstanceOf: $SD_Observation_LabBase
Title: "ตัวอย่าง Observation: ผลการตรวจ Cholesterol"
Description: "ผลการตรวจ Cholesterol"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#laboratory "Laboratory"
  * text = "Laboratory"
* code
  * coding[0] = $LNC#2093-3 "Cholesterol [Mass/volume] in Serum or Plasma"
  * coding[+] = $CS_TMLT#320070 "Cholesterol [mg/dL] in Serum or Plasma"
  * text = "Cholesterol"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* valueQuantity = 200 'mg/dL' "mg/dL"
* interpretation = $CS_HL7_ObsInterpret#N "Normal"
* note.text = "หมายเหตุเพิ่มเติม (ถ้ามี)"
* referenceRange
  * high = 200 'mg/dL' "mg/dL"


Instance: observation-lab-tg
InstanceOf: $SD_Observation_LabBase
Title: "ตัวอย่าง Observation: ผลการตรวจ Triglyceride"
Description: "ผลการตรวจ Triglyceride"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#laboratory "Laboratory"
  * text = "Laboratory"
* code
  * coding[0] = $LNC#2571-8 "Triglyceride [Mass/volume] in Serum or Plasma"
  * coding[+] = $CS_TMLT#320072 "Triglyceride [mg/dL] in Serum or Plasma"
  * text = "Triglyceride"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* valueQuantity = 80 'mg/dL' "mg/dL"
* interpretation = $CS_HL7_ObsInterpret#N "Normal"
* note.text = "หมายเหตุเพิ่มเติม (ถ้ามี)"
* referenceRange
  * high = 150 'mg/dL' "mg/dL"


Instance: observation-lab-ldl
InstanceOf: $SD_Observation_LabBase
Title: "ตัวอย่าง Observation: ผลการตรวจ LDL"
Description: "ผลการตรวจ LDL"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#laboratory "Laboratory"
  * text = "Laboratory"
* code
  * coding[0] = $LNC#13457-7 "Cholesterol in LDL [Mass/volume] in Serum or Plasma by calculation"
  * coding[+] = $CS_TMLT#320293 "Cholesterol in LDL [mg/dL] in Serum or Plasma by calculation"
  * text = "LDL"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* valueQuantity = 80 'mg/dL' "mg/dL"
* interpretation = $CS_HL7_ObsInterpret#N "Normal"
* note.text = "หมายเหตุเพิ่มเติม (ถ้ามี)"
* referenceRange
  * high = 160 'mg/dL' "mg/dL"


Instance: observation-lab-hdl
InstanceOf: $SD_Observation_LabBase
Title: "ตัวอย่าง Observation: ผลการตรวจ HDL"
Description: "ผลการตรวจ HDL"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#laboratory "Laboratory"
  * text = "Laboratory"
* code
  * coding[0] = $LNC#2085-9 "Cholesterol in HDL [Mass/volume] in Serum or Plasma"
  * coding[+] = $CS_TMLT#320071 "Cholesterol in HDL [mg/dL] in Serum or Plasma"
  * text = "HDL"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* valueQuantity = 60 'mg/dL' "mg/dL"
* interpretation = $CS_HL7_ObsInterpret#N "Normal"
* note.text = "หมายเหตุเพิ่มเติม (ถ้ามี)"
* referenceRange
  * low = 40 'mg/dL' "mg/dL"
