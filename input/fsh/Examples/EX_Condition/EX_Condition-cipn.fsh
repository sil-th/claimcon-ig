Instance: condition-cipn
InstanceOf: ClaimConConditionBase
Title: "ตัวอย่าง Condition: CIPN"
Description: "การวินิจฉัยโรค โดยใช้ข้อมูลจากชุดข้อมูล CIPN"
Usage: #example
* meta.source = "cipn"
* category = $CS_HL7_ConditionCategory#encounter-diagnosis
* code = $ICD10#E785
* code.text = "Hyperlipidaemia, unspecified"
* subject = Reference(Patient/patient-cipn)
* encounter = Reference(Encounter/encounter-ipd-cipn)
* recordedDate = "2022-12-25T09:41:23+07:00"
* asserter.type = "Practitioner"
* asserter.identifier.system = $ID_ThaiDoctor
* asserter.identifier.value = "123456"