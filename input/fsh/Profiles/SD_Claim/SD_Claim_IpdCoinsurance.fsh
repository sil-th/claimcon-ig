Profile: ClaimConClaimIpdCoinsurance
Parent: Claim
Id: claimcon-claim-ipd-coinsurance
Title: "ClaimCon Claim: IPD - Coinsurance"
Description: "ค่าใช้จ่ายที่เบิกได้จากสิทธิประกันสุขภาพอื่น สำหรับผู้ป่วยใน"
* ^url = $SD_Claim_IpdCoinsurance
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* identifier MS
* identifier ^slicing.discriminator[0].type = #pattern
* identifier ^slicing.discriminator[=].path = "type"
* identifier ^slicing.rules = #open
* identifier contains
    invNo 0..1 
    // invLt 0..1
* identifier[invNo].type = $CS_TH_IdentifierType#localInvNo
* identifier[invNo] ^short = "เลขที่สำคัญการเรียกเก็บค่ารักษา"
* identifier[invNo].system 1..
* identifier[invNo].system obeys Inv-uri
* identifier[invNo].system ^example.label = "INV namespace"
* identifier[invNo].system ^example.valueUri = $ID_LO_INV
* identifier[invNo].value 1..
// * identifier[invLt].type = $CS_TH_IdentifierType#localInvLt
// * identifier[invLt] ^short = "เลขที่อ้างอิงชุดข้อมูลใบแจ้งหนี้ ของหน่วยบริการ ถ้าไม่มี ใช้ค่าเดียวกับ identifier.inv"
// * identifier[invLt].system 1..
// * identifier[invLt].system obeys InvLt-uri
// * identifier[invLt].system ^example.label = "INV namespace"
// * identifier[invLt].system ^example.valueUri = $ID_LO_INV_LT
// * identifier[invLt].value 1..
* status MS
* type MS
* type = $CS_HL7_ClaimType#institutional
* patient MS
* patient only Reference($SD_Patient_Base)
* created MS
* provider only Reference($SD_Organization_Provider)
* provider MS
// * priority MS
// * supportingInfo MS
// * diagnosis MS
* insurance MS
// * insurance.coverage only Reference($SD_Coverage_Base)
* insurance.coverage MS
* item MS
  * productOrService MS
  * productOrService from $VS_CHI_CoinsuranceCat (extensible)
  * servicedDate MS
  * quantity MS
  * unitPrice MS
  * net MS
* total MS
* total.value MS
* total.currency MS
* total.currency = #THB (exactly)
