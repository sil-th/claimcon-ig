Instance: condition-ipd-eclaim
InstanceOf: ClaimConConditionBase
Title: "ตัวอย่าง Condition: e-Claim IPD"
Description: "การวินิจฉัยโรค โดยใช้ข้อมูลจากชุดข้อมูล e-Claim ส่วน IPD"
Usage: #example
* meta.source = "eclaim"
* category = $CS_HL7_ConditionCategory#encounter-diagnosis
* code = $ICD10#E785
* code.text = "Hyperlipidaemia, unspecified"
* subject = Reference(Patient/patient-eclaim)
* encounter = Reference(Encounter/encounter-ipd-eclaim)
* asserter.type = "Practitioner"
* asserter.identifier.system = $ID_ThaiDoctor
* asserter.identifier.value = "123456"