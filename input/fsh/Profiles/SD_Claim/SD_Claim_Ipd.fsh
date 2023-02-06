Profile: ClaimConClaimIpd
Parent: Claim
Id: claimcon-claim-ipd
Title: "ClaimCon Claim: IPD"
Description: "ค่าใช้จ่ายการรับบริการทั้งหมดที่ส่งเบิก สำหรับผู้ป่วยใน"
* ^url = $SD_Claim_Ipd
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension contains
    $EX_CHI_ProjectCode named projectCode 0..1 MS and
    $EX_CHI_EventCode named eventCode 0..1 MS and
    $EX_CHI_TotalCharge named totalCharge 0..1 MS and
    $EX_CHI_TotalDiscount named totalDiscount 0..1 MS and
    $EX_TH_ClaimTotalCopay named totalCopay 0..1 MS and
    $EX_CHI_TotalDrg named totalDrg 0..1 MS and
    $EX_CHI_TotalXDrg named totalXDrg 0..1 MS and
    $EX_CHI_TotalOtherPay named totalOtherPay 0..1 MS
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
* subType MS
* subType from VS_CHI_IpServiceType (extensible)
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
  * extension contains
    $EX_CHI_AuthDateTime named authDate 0..1 MS
* accident
  * date MS
    * extension contains
      $EX_TH_ClaimAccidentDateTime named accidentDateTime 0..1 MS
    * extension[accidentDateTime] ^short = "วันที่และเวลาที่เกิดอุบัติเหตุ"
* item MS
  * extension contains
    $EX_CHI_ItemCharge named itemCharge 0..1 MS and
    $EX_CHI_ItemNetCharge named itemNetCharge 0..1 MS and
    $EX_CHI_ItemDiscount named itemDiscount 0..1 MS and
    $EX_CHI_ItemClaimCat named itemClaimCat 0..1 MS and
    $EX_CHI_ItemRevDateTime named itemRevDate 0..1 MS and
    $EX_TH_ClaimItemCopay named itemCopay 0..1 MS
  * category MS
  * category.coding ^slicing.discriminator.type = #value
  * category.coding ^slicing.discriminator.path = "system"
  * category.coding ^slicing.rules = #open
  * category.coding contains
      thCategory 0..1 MS and
      eClaimCategory 0..1 MS
  * category.coding[thCategory] ^short = "หมวดค่าใช้จ่ายบริการสาธารณสุข CHI"
  * category.coding[thCategory] from $VS_CHI_FeeCategory (required)
  * category.coding[eClaimCategory] ^short = "หมวดค่าใช้จ่ายบริการสาธารณสุข e-Claim"
  * category.coding[eClaimCategory] from $VS_eClaim_ChargeItem (required)
  * productOrService MS
  * servicedDate MS
  * quantity MS
  * unitPrice MS
  * net MS
* total MS
* total.value MS
* total.currency MS
* total.currency = #THB (exactly)
