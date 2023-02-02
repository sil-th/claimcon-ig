Profile: ClaimConEncounterOpd
Parent: Encounter
Id: claimcon-encounter-opd
Title: "ClaimCon Encounter: OPD"
Description: "การรับบริการ OPD"
* ^url = $SD_Encounter_Opd
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension contains
    $EX_TH_EncounterProviderType named providerType 0..1 MS and
    $EX_TH_EncounterServiceTypeTH named serviceType 0..1 MS
* extension[providerType] ^short = "รหัสประเภทสถานพยาบาลที่รักษา (e-claim & CHI)"
* extension[serviceType] ^short = "ประเภทการให้บริการ (e-claim OPD)"
* identifier MS
* identifier ^slicing.discriminator[0].type = #pattern
* identifier ^slicing.discriminator[=].path = "type"
* identifier ^slicing.rules = #open
* identifier contains
    vn 0..1 MS
* identifier[vn] ^short = "เลขที่การรับบริการ (VN)"
* identifier[vn]
  * type from $VS_TH_IdentifierType (extensible)
  * type = $CS_TH_IdentifierType#localVn
  * system 1..
  * system obeys VN-uri
  * system ^example.label = "VN namespace"
  * system ^example.valueUri = $ID_LO_VN
  * value 1..
* status MS
* class MS
* type MS
* type ^slicing.discriminator[0].type = #value
* type ^slicing.discriminator[=].path = "$this"
* type ^slicing.rules = #open
* type contains
    chiClass 0..1 MS and
    chiTypeServe 0..1 MS
* type[chiClass].coding from $VS_CHI_ServiceClass (extensible)
* type[chiTypeServe].coding from $VS_CHI_TypeServ (extensible)
* serviceType MS
* serviceType.coding ^slicing.discriminator[0].type = #value
* serviceType.coding ^slicing.discriminator[=].path = "$this"
* serviceType.coding ^slicing.rules = #open
* serviceType.coding contains
    chi 0..1 MS and
    eclaim 0..1 MS
* serviceType.coding[chi] from $VS_CHI_Clinic (extensible)
* serviceType.coding[eclaim] from $VS_eClaim_Clinic (extensible)
* subject MS
* subject only Reference($SD_Patient_Base)
* participant MS
* period MS
* diagnosis MS
  * condition MS
  * use.coding ^slicing.discriminator.type = #value
  * use.coding ^slicing.discriminator.path = "system"
  * use.coding ^slicing.rules = #open
  * use.coding contains
      hl7 0..1 MS and
      43plus 0..1 MS
  * use.coding[hl7] from $VS_HL7_DiagRole (extensible)
  * use.coding[43plus] from $VS_43Plus_EncounterDiagnosisRole (extensible)
  * rank MS
* hospitalization MS
* hospitalization.extension contains
    $EX_TH_EncounterDischargeStatus named dischargeStatus 0..1 MS
* hospitalization.extension[dischargeStatus] ^short = "รหัสสถานะผู้มารับบริการเมื่อเสร็จสิ้นบริการ (e-claim & CHI)"
* hospitalization.admitSource MS
* hospitalization.admitSource.coding ^slicing.discriminator[0].type = #value
* hospitalization.admitSource.coding ^slicing.discriminator[=].path = "system"
* hospitalization.admitSource.coding ^slicing.rules = #open
* hospitalization.admitSource.coding contains
    thcc 0..1 MS and
    chi 0..1 MS
* hospitalization.admitSource.coding[thcc] from $VS_THCC_AdmitSource (extensible)
* hospitalization.admitSource.coding[thcc] ^short = "ประเภทการมารับบริการ (e-claim)"
* hospitalization.admitSource.coding[chi] from $VS_CHI_TypeIn (extensible)
* hospitalization.admitSource.coding[chi] ^short = "ประเภทการมารับบริการ (CHI)"
* location MS
  * location.identifier MS
  * location.identifier ^short = "รหัส 5 หลักคลินิกที่รับบริการ (e-claim)"
* serviceProvider MS
* serviceProvider only Reference($SD_Organization_Provider)
