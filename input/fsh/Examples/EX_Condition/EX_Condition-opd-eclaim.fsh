Instance: condition-opd-eclaim
InstanceOf: ClaimConConditionBase
Title: "ตัวอย่าง Condition: e-Claim OPD"
Description: "การวินิจฉัยโรค โดยใช้ข้อมูลจากชุดข้อมูล e-Claim ส่วน OPD"
Usage: #example
* meta.source = "eclaim"
* category = $CS_HL7_ConditionCategory#encounter-diagnosis
* code = $ICD10#E785
* code.text = "Hyperlipidaemia, unspecified"
* subject = Reference(Patient/patient-eclaim)
* encounter = Reference(Encounter/encounter-opd-eclaim)
* recordedDate = "2022-12-25T09:41:23+07:00"
* asserter.type = "Practitioner"
* asserter.identifier.system = $ID_ThaiDoctor
* asserter.identifier.value = "123456"