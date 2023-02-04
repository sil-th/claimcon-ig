Instance: encounter-ipd-cipn
InstanceOf: $SD_Encounter_Ipd
Title: "ตัวอย่าง Encounter: CIPN"
Description: "การรับบริการ IPD โดยใช้ข้อมูลจากชุดข้อมูล CIPN"
Usage: #example
* meta.source = "cipn"
* identifier
  * type = $CS_TH_IdentifierType#localAn
  * system = "https://terms.sil-th.org/hcode/5/13814/AN"
  * value = "640002733"
* status = #finished
* class = $CS_HL7_EncounterClass#IMP "inpatient encounter"
* subject = Reference(Patient/patient-cipn)
* period
  * start = "2022-11-15T09:49:23+07:00"
  * end = "2022-11-15T09:56:02+07:00"
* diagnosis
  * condition = Reference(Condition/condition-cipn)
  * use = $CS_43Plus_EncounterDiagnosisRole#1 "Primary Diagnosis"
  * rank = 1
* hospitalization
  * extension[0]
    * url = $EX_CHI_EncounterAdmitType
    * valueCodeableConcept = $CS_CHI_AdmitType#A "accident"
  * extension[+]
    * url = $EX_TH_EncounterIpdDischargeType
    * valueCodeableConcept = $CS_THCC_IpdDischargeType#1 "With Approval"
  * extension[+]
    * url = $EX_TH_EncounterIpdDischargeStatus
    * valueCodeableConcept = $CS_THCC_IpdDischargeStatus#1 "Complete Recovery"
  * admitSource = $CS_CHI_AdmitSource#E "แผนก Emergency"
* location[0]
  * extension[0]
    * url = $EX_TH_EncounterIpdJourney
    * valueCodeableConcept = $CS_Meta_IpdJourney#main
  * location
    * display = "01"
* location[+]
  * extension[0]
    * url = $EX_TH_EncounterIpdJourney
    * valueCodeableConcept = $CS_Meta_IpdJourney#discharge
  * location
    * display = "10100"