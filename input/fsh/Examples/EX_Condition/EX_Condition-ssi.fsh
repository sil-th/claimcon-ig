Instance: condition-ssi
InstanceOf: ClaimConConditionBase
Title: "ตัวอย่าง Condition: SSI"
Description: "การวินิจฉัยโรค โดยใช้ข้อมูลจากชุดข้อมูล SSI"
Usage: #example
* meta.source = "ssi"
* category = $CS_HL7_ConditionCategory#encounter-diagnosis
* code = $ICD10#E785
* code.text = "Hyperlipidaemia, unspecified"
* subject = Reference(Patient/patient-ssi)
* encounter = Reference(Encounter/encounter-ipd-ssi)
* asserter.type = "Practitioner"
* asserter.identifier.system = $ID_ThaiDoctor
* asserter.identifier.value = "123456"