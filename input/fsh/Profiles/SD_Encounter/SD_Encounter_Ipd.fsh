Profile: ClaimConEncounterIpd
Parent: Encounter
Id: claimcon-encounter-ipd
Title: "ClaimCon Encounter: IPD"
Description: "การรับบริการ IPD"
* ^url = $SD_Encounter_Ipd
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension contains
    $EX_TH_EncounterProviderType named providerType 0..1 MS and
    $EX_TH_ServiceRequestReferPatientCatagory named referType 0..1 MS and
    $EX_CHI_EncounterReferPurpose named referPurpose 0..1 MS and
    $EX_TH_EncounterLeaveDay named leaveDay 0..1 MS     
* extension[providerType] ^short = "รหัสประเภทสถานพยาบาลที่รักษา (e-claim & CHI)"
* extension[referType] ^short = "เป็นการรักษากรณีอุบัติเหตุและ/หรือฉุกเฉิน (กรณีรับ refer)"
* extension[referPurpose] ^short = "สาเหตุที่ส่งผู้ป่วยมา (กรณีรับ refer)"
* identifier MS
* identifier ^slicing.discriminator[0].type = #pattern
* identifier ^slicing.discriminator[=].path = "type"
* identifier ^slicing.rules = #open
* identifier contains
    an 0..1 MS
* identifier[an] ^short = "เลขที่ผู้ปวยใน (AN)"
* identifier[an]
  * type from $VS_TH_IdentifierType (extensible)
  * type = $CS_TH_IdentifierType#localAn
  * system 1..
  * system obeys AN-uri
  * system ^example.label = "AN namespace"
  * system ^example.valueUri = $ID_LO_AN
  * value 1..
* status MS
* class MS
* priority
  * extension contains
    $EX_TH_ServiceRequestReferPriorityReason named priorityReason 0..1 MS
* priority.extension[priorityReason] ^short = "รหัสข้อบ่งชี้ของกรณีฉุกเฉิน (กรณีรับ refer)"
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
  * start MS
  * end MS
* diagnosis MS
  * use.coding ^slicing.discriminator.type = #value
  * use.coding ^slicing.discriminator.path = "system"
  * use.coding ^slicing.rules = #open
  * use.coding contains
      chi 0..1 MS
  * use.coding[chi] from $VS_CHI_DiagnosisRole (extensible)
  * rank MS
* hospitalization MS
* hospitalization.extension contains
    $EX_CHI_EncounterAdmitType named admitType 0..1 MS and 
    $EX_TH_EncounterIpdDischargeStatus named dischargeStatus 0..1 MS and
    $EX_TH_EncounterIpdDischargeType named dischargeType 0..1 MS
* hospitalization.extension[admitType] ^short = "ประเภทการรับ admit (CHI)"
* hospitalization.extension[dischargeStatus] ^short = "สถานภาพ การจําหน่ายผู้ป่วย (e-claim & CHI)"
* hospitalization.extension[dischargeType] ^short = "วิธีการจําหน่ายผู้ป่วย (e-claim & CHI)"
* hospitalization.admitSource MS
* hospitalization.admitSource.coding ^slicing.discriminator[0].type = #value
* hospitalization.admitSource.coding ^slicing.discriminator[=].path = "system"
* hospitalization.admitSource.coding ^slicing.rules = #open
* hospitalization.admitSource.coding contains
    chi 0..1 MS
* hospitalization.admitSource.coding[chi] from $VS_CHI_AdmitSource (extensible)
* location MS
  * extension contains
    $EX_TH_EncounterIpdJourney named wardType 0..1 MS
  * location.identifier.value MS
  * location.identifier.value ^short = "ีรหัสที่รพ.กำหนด (CHI) หรือรหัส 5 หลักคลินิกที่รับบริการ (e-claim)"
* serviceProvider MS
* serviceProvider only Reference($SD_Organization_Provider)
