Instance: condition-opd2-main
InstanceOf: $SD_Condition_Base
Title: "ตัวอย่าง Condition: การวินิจฉัยโรคหลัก ในบริการ OPD บริการปฐมภูมิ"
Description: "การวินิจฉัยโรคหลัก ในบริการ OPD บริการปฐมภูมิ"
Usage: #example
* extension[0]
  * url = $EX_HL7_ConditionDueTo
  * valueCodeableConcept
    * coding = $SCT#58800005 "Genus Streptococcus"
    * text = "สาเหตุการป่วย (ถ้าสามารถระบุได้)"
* category = $CS_HL7_ConditionCategory#encounter-diagnosis "Encounter Diagnosis"
* code
  * coding[0] = $SCT#43878008 "Streptococcal pharyngitis"
  * coding[+] = $ICD10#J02.0 "Streptococcal pharyngitis"
  * text = "Streptococcal pharyngitis"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* onsetDateTime = "2022-01-01T12:30:02+07:00"
* asserter = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"
* note.text = "หมายเหตุประกอบการวินิจฉัยโรค"


Instance: condition-opd2-comorbid
InstanceOf: $SD_Condition_Base
Title: "ตัวอย่าง Condition: การวินิจฉัยโรคร่วม ในบริการ OPD บริการปฐมภูมิ"
Description: "การวินิจฉัยโรคร่วม ในบริการ OPD บริการปฐมภูมิ"
Usage: #example
* category = $CS_HL7_ConditionCategory#encounter-diagnosis "Encounter Diagnosis"
* code
  * coding[0] = $SCT#73211009 "Diabetes mellitus"
  * coding[+] = $ICD10#E14.9 "Unspecified diabetes mellitus : Without complications"
  * text = "Diabetes mellitus"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* onsetDateTime = "2022-01-01T12:30:02+07:00"
* asserter = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"
* note.text = "หมายเหตุประกอบการวินิจฉัยโรค"
