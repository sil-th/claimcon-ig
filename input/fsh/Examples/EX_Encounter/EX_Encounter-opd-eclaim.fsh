Instance: encounter-opd-eclaim
InstanceOf: $SD_Encounter_Opd
Title: "ตัวอย่าง Encounter: e-Claim OPD"
Description: "การรับบริการ OPD โดยใช้ข้อมูลจากชุดข้อมูล e-Claim"
Usage: #example
* meta.source = "eclaim"
* extension[0]
  * url = $EX_TH_EncounterProviderType
  * valueCodeableConcept = $CS_eClaim_ProviderType#1 "Main Contractor"
* identifier
  * type = $CS_TH_IdentifierType#localVn
  * system = "https://terms.sil-th.org/hcode/5/13814/VN"
  * value = "640002731"
* status = #finished
* class = $CS_HL7_EncounterClass#AMB "ambulatory"
* serviceType = $CS_eClaim_Clinic#01 "อายุรกรรม"
* subject = Reference(Patient/patient-eclaim)
* period.start = "2022-11-15T09:49:23+07:00"
* diagnosis[0]
  * condition
    * display = "ปวดท้อง จุกแน่นท้อง บริเวณเหนือสะดือ 4 ชั่วโมง ก่อนมาโรงพยาบาล"
  * use = $CS_HL7_DiagRole#CC "Chief complaint"
* diagnosis[+]
  * condition = Reference(Condition/condition-opd-eclaim)
  * use = $CS_43Plus_EncounterDiagnosisRole#1 "Primary Diagnosis"
* hospitalization
  * extension[0]
    * url = $EX_TH_EncounterDischargeStatus
    * valueCodeableConcept = $CS_THCC_DischargeStatus#1 "จำหน่ายกลับบ้าน"
  * admitSource = $CS_THCC_AdmitSource#1 "มารับบริการเอง"
* location
  * location
    * display = "01001"
* serviceProvider = Reference(Organization/organization-eclaim)