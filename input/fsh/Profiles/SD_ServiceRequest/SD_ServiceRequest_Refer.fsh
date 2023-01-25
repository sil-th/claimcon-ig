Profile: ClaimConServiceRequestRefer
Parent: ServiceRequest
Id: claimcon-servicerequest-refer
Title: "ClaimCon ServiceRequest: Refer"
Description: "การส่งต่อผู้ป่วยระหว่างสถานพยาบาล"
* ^url = $SD_ServiceRequest_Refer
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
// * extension contains
//     $EX_TH_ServiceRequestReferRequesterDetail named requesterDetail 0..1 MS and
//     $EX_TH_ServiceRequestReferPatientCatagory named patientCategory 0..1 MS and
//     $EX_TH_ServiceRequestReferStatus named referStatus 0..1 MS and
//     $EX_TH_ServiceRequestReferResultReason named resultReason 0..1 MS and
//     $EX_TH_ServiceRequestReferRequestedPeriod named requestedPeriod 0..1 MS and
//     $EX_HL7_PreCondition named preCondition 0..1 MS
// * extension[resultReason] ^short = "ใช้ในกรณีต้องการอธิบายเหตุผลที่ไม่สามารถรับผู้ป่วยไว้รักษาต่อได้"
// * extension[preCondition] ^short = "สถานะของผู้ป่วยก่อนหรือระหว่างการส่งต่อ"
* identifier MS
* identifier ^slicing.discriminator[0].type = #pattern
* identifier ^slicing.discriminator[=].path = "type"
* identifier ^slicing.rules = #open
* identifier contains
    localReferNo 0..1 MS
    // ProvincialReferNo 0..1 MS and
    // localReferDocument 0..1 MS
* identifier[localReferNo] ^short = "เลขที่การส่งต่อผู้ป่วย"
* identifier[localReferNo].type = $CS_TH_IdentifierType#localReferNo
* identifier[localReferNo].system 1..
* identifier[localReferNo].system obeys LocalRefer-uri
* identifier[localReferNo].system ^example.label = "ตัวอย่าง namespace เลขที่การส่งต่อผู้ป่วย"
* identifier[localReferNo].system ^example.valueUri = $ID_LO_Refer
* identifier[localReferNo].value 1..
// * identifier[ProvincialReferNo] ^short = "เลขที่การส่งต่อผู้ป่วยกลางของจังหวัด"
// * identifier[ProvincialReferNo].type = $CS_TH_IdentifierType#localReferPro
// * identifier[ProvincialReferNo].system 1..
// * identifier[ProvincialReferNo].system obeys ProvincialRefer-uri
// * identifier[ProvincialReferNo].system ^example.label = "ตัวอย่าง namespace เลขที่การส่งต่อผู้ป่วยกลางของจังหวัด"
// * identifier[ProvincialReferNo].system ^example.valueUri = $ID_LO_ReferProvince
// * identifier[ProvincialReferNo].value 1..
// * identifier[localReferDocument] ^short = "เลขเอกสารของสถานพยาบาลต้นทาง"
// * identifier[localReferDocument].type = $CS_TH_IdentifierType#localReferDoc
// * identifier[localReferDocument].system 1..
// * identifier[localReferDocument].system obeys LocalReferDocument-uri
// * identifier[localReferDocument].system ^example.label = "ตัวอย่าง namespace เลขเอกสารของสถานพยาบาลต้นทาง"
// * identifier[localReferDocument].system ^example.valueUri = $ID_LO_ReferDocument
// * identifier[localReferDocument].value 1..
* status MS
// * intent MS
* category MS
* category ^slicing.discriminator[0].type = #value
* category ^slicing.discriminator[=].path = "coding.system"
* category ^slicing.rules = #open
* category contains
//     thcc 0..1 MS and
//     43plus 0..1 MS and
//     std15 0..1 MS and
//     eclaim 0..1 MS and
    chi 0..1 MS
* category[chi] from $VS_CHI_ReferPurpose (extensible)
// * category[thcc] from $VS_THCC_ReferReason (extensible)
// * category[thcc].coding.system = $CS_THCC_ReferReason (exactly)
// * category[43plus] from $VS_43Plus_ReferReason (extensible)
// * category[43plus].coding.system = $CS_43Plus_ReferReason (exactly)
// * category[std15] from $VS_Std15_ReferReason (extensible)
// * category[std15].coding.system = $CS_Std15_ReferReason (exactly)
// * category[eclaim] from $VS_eClaim_ReferReason (extensible)
// * category[eclaim].coding.system = $CS_eClaim_ReferReason (exactly)
// * category[snomed] from $VS_SNOMED_INT (extensible)
// * category[snomed].coding.system = $SCT (exactly)
// * priority MS
//   * extension contains
//     $EX_TH_ServiceRequestThaiReferPriority named thaiReferPriority 0..1 MS and
//     $EX_TH_ServiceRequestReferPriorityReason named priorityReason 0..1 MS
// * code MS
// * subject MS
// * subject only Reference($SD_Patient_Base)
// * encounter MS
// * encounter only Reference($SD_Encounter_Base)
// * authoredOn MS
* requester MS
// * requester only Reference($SD_Practitioner_Base)
* performer MS
// * reasonCode MS
// * reasonCode ^slicing.discriminator[0].type = #value
// * reasonCode ^slicing.discriminator[=].path = "coding.system"
// * reasonCode ^slicing.rules = #open
// * reasonCode contains
//     specialDisease 0..1 MS
// * reasonCode[specialDisease] from $VS_43File_ReferSpecialDisease (extensible)
// * reasonCode[specialDisease] ^short = "การส่งต่อผู้ป่วยโรคเฉพาะทาง"
// * reasonCode[specialDisease].coding.system = $CS_43File_ReferSpecialDisease (exactly)