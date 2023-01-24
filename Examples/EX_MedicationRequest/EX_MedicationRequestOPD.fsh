Instance: medicationrequest-opd-amoxicillin
InstanceOf: $SD_MedicationRequest_Base
Title: "ตัวอย่าง MedicationRequest: การสั่งยา Amoxicillin หลังการรับบริการ OPD"
Description: "แสดงการสั่งยา Amoxicillin หลังการรับบริการ OPD"
Usage: #example
* extension[0]
  * url = $EX_TH_MedicationRequestSource
  * valueCodeableConcept = $CS_Std15_MedicationSource#1 "ยาที่ให้จาก รพ.ต้นทาง"
* extension[+]
  * url = $EX_TH_MedicationRequestNedCriteria
  * valueCodeableConcept = $CS_eClaim_MedNedCriteria#EA "เกิดอาการไม่พึงประสงค์จากยาหรือแพ้ยาที่สามารถใช้ได้ในบัญชียาหลักแห่งชาติ"
* extension[+]
  * url = $EX_TH_MedicationRequestApprovedNo
  * valueString = "ApprovedNumber"
* identifier
  * use = #usual
  * type = $CS_TH_IdentifierType#localPresc "รหัสใบสั่งยา ของหน่วยบริการ"
  * system = $CS_TH_LocalDrugCode
  * value = "XXXX"
* status = #completed
* intent = #order
* category = $CS_eClaim_MedicationCategory#2 "ใช้ที่บ้าน"
* medicationCodeableConcept
  * coding[0] = $CS_TMT#227162 "AAMOX 500 (ห้างขายยาตราเจ็ดดาว) (amoxicillin 500 mg) film-coated tablet, 1 tablet"
  * coding[+] = $CS_TH_LocalDrugCode#1233 "Local code amoxycillin 500 mg"
  * text = "Amoxycillin 500 mg"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* encounter = Reference(Encounter/encounter-opd2)
* authoredOn = "2022-01-01T12:30:02+07:00"
* requester = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"
* reasonCode = $SCT#43878008 "Streptococcal pharyngitis"
* note.text = "หมายเหตุเกี่ยวกับการใช้ยา (ถ้ามี)"
* dosageInstruction
  * extension
    * url = $EX_TH_MedicationRequestDosageCode
    * valueString = "1x3 po"
  * text = "Take one tablet three times a day"
  * route = $SCT#26643006 "Oral route"