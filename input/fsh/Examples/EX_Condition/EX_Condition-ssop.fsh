Instance: condition-ssop
InstanceOf: ClaimConConditionBase
Title: "ตัวอย่าง Condition: SSOP"
Description: "การวินิจฉัยโรค โดยใช้ข้อมูลจากชุดข้อมูล SSOP"
Usage: #example
* meta.source = "ssop"
* category = $CS_HL7_ConditionCategory#encounter-diagnosis
* code = $ICD10#E785
* code.text = "Hyperlipidaemia, unspecified"
* subject = Reference(Patient/patient-ssop)
* asserter.type = "Practitioner"
* asserter.identifier.system = $ID_ThaiDoctor
* asserter.identifier.value = "123456"