Instance: allergyintolerance-patient4
InstanceOf: $SD_AllergyIntolerance_Base
Title: "ตัวอย่าง AllergyIntolerance: ประวัติการแพ้ยาและสิ่งอื่น ๆ"
Description: "ประวัติการแพ้ยา อาหาร เวชภัณฑ์ สิ่งแวดล้อม สารเคมี ฯลฯ"
Usage: #example
* extension[0]
  * url = $EX_TH_AllergyIntoleranceCertainty
  * valueCodeableConcept
    * coding[0] = $CS_THCC_AllergyCertainty#1 "certain"
* extension[+]
  * url = $EX_TH_AllergyIntoleranceSeverity
  * valueCodeableConcept
    * coding[0] = $CS_THCC_AllergySeverity#1 "ไม่ร้ายแรง (Non-serious)"
* extension[+]
  * url = $EX_TH_AllergyIntoleranceAssertType
  * valueCodeableConcept
    * coding[0] = $CS_THCC_AllergyAssertType#3 "สถานพยาบาลอื่นเป็นผู้ให้ข้อมูล"
* extension[+]
  * url = $EX_TH_AllergyIntoleranceAssertOrg
  * valueReference = Reference(Organization/organization-main)
* clinicalStatus
  * coding[0] = $CS_HL7_AlleryActive#active "Active"
* verificationStatus
  * coding[0] = $CS_HL7_AllergyVerify#confirmed "Confirmed"
* category = #medication
* code
  * coding[0] = $CS_TMT#227162 "AAMOX 500 (ห้างขายยาตราเจ็ดดาว) (amoxicillin 500 mg) film-coated tablet, 1 tablet"
  * coding[+] = $CS_TH_LocalDrugCode#1233 "Local code amoxycillin 500 mg"
  * text = "Amoxycillin 500 mg"
* patient = Reference(Patient/patient-patient4)
* recordedDate = "2022-05-29"
* recorder = Reference(Practitioner/practitioner-doctor1)
* reaction
  * manifestation
    * coding[0] = $SCT#28926001 "Eruption caused by drug"
    * coding[+] = $CS_THCC_AllergyManifest#26 "L27.19"
    * text = "ผื่นขึ้นหลังได้ยา"