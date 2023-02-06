Profile: ClaimConServiceRequestRefer
Parent: ServiceRequest
Id: claimcon-servicerequest-refer
Title: "ClaimCon ServiceRequest: Refer"
Description: "การส่งต่อผู้ป่วยระหว่างสถานพยาบาล"
* ^url = $SD_ServiceRequest_Refer
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension contains
    $EX_TH_ServiceRequestReferPatientCatagory named referType 0..1 MS
* identifier MS
* identifier ^slicing.discriminator[0].type = #pattern
* identifier ^slicing.discriminator[=].path = "type"
* identifier ^slicing.rules = #open
* identifier contains
    localReferNo 0..1 MS
* identifier[localReferNo] ^short = "เลขที่การส่งต่อผู้ป่วย"
* identifier[localReferNo].type = $CS_TH_IdentifierType#localReferNo
* identifier[localReferNo].system 1..
* identifier[localReferNo].system obeys LocalRefer-uri
* identifier[localReferNo].system ^example.label = "ตัวอย่าง namespace เลขที่การส่งต่อผู้ป่วย"
* identifier[localReferNo].system ^example.valueUri = $ID_LO_Refer
* identifier[localReferNo].value 1..
* status MS
* category MS
* category ^slicing.discriminator[0].type = #value
* category ^slicing.discriminator[=].path = "coding.system"
* category ^slicing.rules = #open
* category contains
    chi 0..1 MS and
    eclaim 0..1 MS
* category[chi] from $VS_CHI_ReferPurpose (extensible)
* category[eclaim] from $VS_eClaim_ReferReason (extensible)
* priority MS
  * extension contains
    $EX_TH_ServiceRequestReferPriorityReason named priorityReason 0..1 MS
* subject MS
* subject only Reference($SD_Patient_Base)
* encounter MS
* authoredOn MS
* requester MS
* performer MS
* insurance
  * extension contains
    $EX_TH_AccountAccidentCoverage named accidentFund 0..1 MS