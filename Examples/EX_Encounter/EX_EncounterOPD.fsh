Instance: encounter-opd1
InstanceOf: $SD_Encounter_Base
Title: "ตัวอย่าง Encounter: การรับบริการ OPD"
Description: "แสดงการรับบริการ OPD โดยทั่วไป"
Usage: #example
* meta
  * security = $CS_HL7_SecurityLebel#R "restricted"
* extension[0]
  * url = $EX_TH_EncounterServiceTypeTH 
  * valueCodeableConcept = $CS_eClaim_ServiceTypeTH#0 "Refer ในบัญชีเครือข่ายเดียวกัน"
* status = #finished
* class = $CS_HL7_EncounterClass#AMB "ambulatory"
// * priority
//   * coding[hl7] = $CS_HL7_Priority#R "routine"
//   * text = "ปกติ"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
  * extension
    * url = $EX_TH_EncounterPatientLocationType 
    * valueCodeableConcept = $CS_THCC_PatientLocationType#1 "ในเขตรับผิดชอบ"
// * participant[0]
//   * type
//     * coding[hl7] = $CS_HL7_ParticipantType#PPRF "primary performer"
//     * coding[43plus] = $CS_Meta_ParticipantType#PPRF "แพทย์เจ้าของคนไข้"
//   * individual = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"
* period
  * extension
    * url = $EX_TH_EncounterServiceHour 
    * valueCodeableConcept = $CS_THCC_ServiceHour#1 "ในเวลาราชการ"
  * start = "2022-01-01T12:30:02+07:00"
  * end = "2022-01-01T14:30:02+07:00"
* reasonCode[0]
  * coding[0] = $SCT#386661006 "Fever"
  * text = "มีไข้ 3 วัน"
// * hospitalization
//   * extension[0]
//     * url = $EX_TH_EncounterDischargeStatus 
//     * valueCodeableConcept = $CS_THCC_DischargeStatus#3 "ส่งต่อไปยังสถานพยาบาลอื่น"
//   * extension[+]
//     * url = $EX_TH_EncounterDischargeInstruction
//     * valueAnnotation
//       * text = "ใส่คำแนะนำหลังการเข้ารับบริการ"
//   * origin = Reference(Organization/organization-second)
//     * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลเครือข่าย")
//   * admitSource
//     * coding[hl7] = $CS_HL7_AdmitSource#gp "General Practitioner referral"
//     * coding[thcc] = $CS_THCC_AdmitSource#3 "ได้รับการส่งต่อจากสถานพยาบาลอื่น"
//     * text = "มารับบริการเอง"
//   * destination = Reference(Organization/organization-third)
//     * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตติยภูมิ")
* location
  * extension
    * url = $EX_TH_EncounterServiceLocationType 
    * valueCodeableConcept = $CS_PCU_ServiceLocationType#1 "ในสถานบริการ"
  * location.display = "OPD GP Clinic 1 โรงพยาบาลตัวอย่าง"
* serviceProvider = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
  * extension
    * url = $EX_TH_EncounterProviderType 
    * valueCodeableConcept = $CS_eClaim_ProviderType#1 "Main Contractor"



Instance: encounter-opd2
InstanceOf: $SD_Encounter_Base
Title: "ตัวอย่าง Encounter: การรับบริการ OPD บริการปฐมภูมิ"
Description: "แสดงการรับบริการ OPD บริการปฐมภูมิ"
Usage: #example
* identifier[0]
  * use = #secondary
  * type
    // * coding[0] = $CS_HL7_IdentifierType#VN "Visit number"
    * coding[0] = $CS_TH_IdentifierType#localVn "เลข Visit Number (VN) ของหน่วยบริการ"
  * system = $ID_LO_VN
  * value = "65-XXXXX"
* status = #finished
* class = $CS_HL7_EncounterClass#AMB "ambulatory"
// * priority
//   * coding[hl7] = $CS_HL7_Priority#R "routine"
//   * text = "ปกติ"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
  * extension
    * url = $EX_TH_EncounterPatientLocationType 
    * valueCodeableConcept = $CS_THCC_PatientLocationType#1 "ในเขตรับผิดชอบ"
// * participant[0]
//   * type
//     * coding[hl7] = $CS_HL7_ParticipantType#PPRF "primary performer"
//     * coding[43plus] = $CS_Meta_ParticipantType#PPRF "แพทย์เจ้าของคนไข้"
//   * individual = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"
* period
  * start = "2022-01-01T12:30:02+07:00"
  * end = "2022-01-01T14:30:02+07:00"
* reasonCode[0]
  * coding[0] = $SCT#135883003 "Cough with fever"
  * text = "มีไข้ ไอ 3 วัน"
* diagnosis[0]
  * condition = Reference(Condition/condition-opd2-main)
  * use
    * coding[0] = $CS_HL7_DiagRole#DD "Discharge diagnosis"
    * coding[+] = $CS_43Plus_EncounterDiagnosisRole#1 "PRINCIPLE DX (การวินิจฉัยโรคหลัก)"
* diagnosis[+]
  * condition = Reference(Condition/condition-opd2-comorbid)
  * use
    * coding[0] = $CS_HL7_DiagRole#DD "Discharge diagnosis"
    * coding[+] = $CS_43Plus_EncounterDiagnosisRole#1 "PRINCIPLE DX (การวินิจฉัยโรคหลัก)"
* location
  * extension
    * url = $EX_TH_EncounterServiceLocationType 
    * valueCodeableConcept = $CS_PCU_ServiceLocationType#1 "ในสถานบริการ"
  * location.display = "OPD GP Clinic 1"
* serviceProvider = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")

