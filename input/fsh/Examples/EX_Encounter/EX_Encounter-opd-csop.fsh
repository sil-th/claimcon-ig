Instance: encounter-opd-csop
InstanceOf: $SD_Encounter_Opd
Title: "ตัวอย่าง Encounter: CSOP"
Description: "การรับบริการ OPD โดยใช้ข้อมูลจากชุดข้อมูล CSOP"
Usage: #example
* meta.source = "csop"
* extension[0]
  * url = $EX_TH_EncounterProviderType
  * valueCodeableConcept = $CS_eClaim_ProviderType#1 "Main Contractor"
* identifier
  * type = $CS_TH_IdentifierType#localVn
  * system = "https://terms.sil-th.org/hcode/5/13814/VN"
  * value = "640002731"
* status = #finished
* class = $CS_HL7_EncounterClass#AMB "ambulatory"
* type[0] = $CS_CHI_ServiceClass#EC "การตรวจรักษา"
* type[+] = $CS_CHI_TypeServ#01 "พบแพทย์เพื่อวินิจฉัยโรคครั้งแรก"
* serviceType = $CS_CHI_Clinic#01 "อายุรกรรม"
* subject = Reference(Patient/patient-csop)
* participant
  * individual
    * type = "Practitioner"
    * identifier
      * system = $ID_ThaiDoctor
      * value = "123456"
* period
  * start = "2022-11-15T09:49:23+07:00"
  * end = "2022-11-15T09:56:02+07:00"
* diagnosis
  * condition = Reference(Condition/condition-csop)
  * use = $CS_43Plus_EncounterDiagnosisRole#1 "Primary Diagnosis"
  * rank = 1
* hospitalization
  * extension[0]
    * url = $EX_TH_EncounterDischargeStatus
    * valueCodeableConcept = $CS_CHI_TypeOut#1 "จำหน่ายกลับบ้าน"
  * admitSource = $CS_CHI_TypeIn#1 "มารับบริการเอง"
* serviceProvider = Reference(Organization/organization-csop)