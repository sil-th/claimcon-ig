Profile: ClaimConClaimAdp
Parent: Claim
Id: claimcon-claim-adp
Title: "ClaimCon Claim: ADP"
Description: "ค่าใช้จ่ายเพิ่ม และค่าบริการที่ยังไม่ได้จัดหมวด (จาก e-Claim แฟ้ม ADP)"
* ^url = $SD_Claim_Ipd
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* identifier MS
* identifier ^slicing.discriminator[0].type = #pattern
* identifier ^slicing.discriminator[=].path = "type"
* identifier ^slicing.rules = #open
* identifier contains
    invNo 0..1 and
    invLt 0..1
* identifier[invNo].type = $CS_TH_IdentifierType#localInvNo
* identifier[invNo] ^short = "เลขที่สำคัญการเรียกเก็บค่ารักษา"
* identifier[invNo].system 1..
* identifier[invNo].system obeys Inv-uri
* identifier[invNo].system ^example.label = "INV namespace"
* identifier[invNo].system ^example.valueUri = $ID_LO_INV
* identifier[invNo].value 1..
* identifier[invLt].type = $CS_TH_IdentifierType#localInvLt
* identifier[invLt] ^short = "เลขที่อ้างอิงชุดข้อมูลใบแจ้งหนี้ของหน่วยบริการ"
* identifier[invLt].system 1..
* identifier[invLt].system obeys InvLt-uri
* identifier[invLt].system ^example.label = "INV namespace"
* identifier[invLt].system ^example.valueUri = $ID_LO_INV_LT
* identifier[invLt].value 1..
* status MS
* type = $CS_HL7_ClaimType#institutional
* patient MS
* patient only Reference($SD_Patient_Base)
* created MS
* provider only Reference($SD_Organization_Provider)
* provider MS
* supportingInfo MS
* diagnosis MS
* procedure MS
* insurance MS
* insurance.coverage MS
* insurance.preAuthRef MS
* item MS
  * extension contains
    $EX_TH_ClaimItemCopay named itemCopay 0..1 MS
  * category MS
  * category.coding ^slicing.discriminator.type = #value
  * category.coding ^slicing.discriminator.path = "system"
  * category.coding ^slicing.rules = #open
  * category.coding contains
      adp 0..1 MS
  * category.coding[adp] ^short = "รหัสบริการที่ยังไม่ได้จัดหมวด (ADP) สำหรับ e-Claim"
  * category.coding[adp] from $VS_eClaim_AdpType (required)
  * productOrService MS
  * servicedDate MS
  * quantity MS
  * unitPrice MS
  * net MS
* total MS
* total.value MS
* total.currency MS
* total.currency = #THB (exactly)
