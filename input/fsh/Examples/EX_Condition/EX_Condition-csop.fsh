Instance: condition-csop
InstanceOf: ClaimConConditionBase
Title: "ตัวอย่าง Condition: CSOP"
Description: "การวินิจฉัยโรค โดยใช้ข้อมูลจากชุดข้อมูล CSOP"
Usage: #example
* meta.source = "csop"
* category = $CS_HL7_ConditionCategory#encounter-diagnosis
* code = $ICD10#E785
* code.text = "Hyperlipidaemia, unspecified"
* subject = Reference(Patient/patient-csop)
* asserter.type = "Practitioner"
* asserter.identifier.system = $ID_ThaiDoctor
* asserter.identifier.value = "123456"