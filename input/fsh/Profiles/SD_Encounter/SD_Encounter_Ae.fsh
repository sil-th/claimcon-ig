Profile: ClaimConEncounterAe
Parent: Encounter
Id: claimcon-encounter-ae
Title: "ClaimCon Encounter: AE"
Description: "การรับบริการ Accident / Emergency"
* ^url = $SD_Encounter_Ae
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension contains
  $EX_CHI_EncounterAccidentOrEmer named accidentOrEmer 0..1 MS and
  // $EX_CHI_EncounterAccidentCoverage named otherAccidentCoverage 0..1 MS and
  $EX_CHI_EncounterReferPurpose named referPurpose 0..1 MS
* extension[referPurpose] ^short = "สาเหตุที่ส่งผู้ป่วยมา"
* identifier MS
* identifier ^slicing.discriminator[0].type = #pattern
* identifier ^slicing.discriminator[=].path = "type"
* identifier ^slicing.rules = #open
* identifier contains
    vn 0..1 MS and
    an 0..1 MS
* identifier[vn] ^short = "เลขที่การรับบริการ (VN)"
* identifier[vn]
  * type from $VS_TH_IdentifierType (extensible)
  * type = $CS_TH_IdentifierType#localVn
  * system 1..
  * system obeys VN-uri
  * system ^example.label = "VN namespace"
  * system ^example.valueUri = $ID_LO_VN
  * value 1..
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
* priority MS
  * extension contains
    $EX_TH_ServiceRequestReferPriorityReason named priorityReason 0..1 MS
* subject MS
* subject only Reference($SD_Patient_Base)
* basedOn MS
* participant MS
* period MS
  * start MS
  * end MS
* hospitalization MS
* hospitalization.origin MS
* serviceProvider MS
* serviceProvider only Reference($SD_Organization_Provider)
