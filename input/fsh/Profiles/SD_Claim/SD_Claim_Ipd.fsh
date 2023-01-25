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
    $EX_CHI_TotalDiscount named totalDiscount 0..1 MS and
    $EX_CHI_TotalDrg named totalDrg 0..1 MS and
    $EX_CHI_TotalXDrg named totalXDrg 0..1 MS
//     $EX_CHI_AuthStation named authStation 0..1 MS and
//     $EX_CHI_BillNo named billNo 0..1 MS and
//     $EX_CHI_TotalCharge named totalCharge 0..1 MS and
//     $EX_TH_ClaimTotalCopay named totalCopay 0..1 MS and
//     $EX_CHI_TotalOtherPay named totalOtherPay 0..1 MS
    // $EX_TH_ClaimTotalCost named totalCost 0..1 MS and
    // $EX_TH_ClaimTotalPaid named totalPaid 0..1 MS and
    // $EX_TH_ClaimTotalUnpaid named totalUnpaid 0..1 MS and
    // $EX_TH_ClaimFeeNote named feeNote 0..1 MS and
    // $EX_TH_ClaimIpdDRG named drg 0..1 MS
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
* subType MS
* subType from VS_CHI_IpServiceType (extensible)
* patient MS
* patient only Reference($SD_Patient_Base)
* created MS
* provider only Reference($SD_Organization_Provider)
* provider MS
// * priority MS
// * supportingInfo MS
// * diagnosis MS
* diagnosis MS
* procedure MS
* insurance MS
// * insurance.coverage only Reference($SD_Coverage_Base)
* insurance.coverage MS
* insurance.preAuthRef MS
  * extension contains
    $EX_CHI_AuthDateTime named authDate 0..1 MS
* item MS
  * extension contains
    $EX_CHI_ItemCharge named itemCharge 0..1 MS and
    $EX_CHI_ItemNetCharge named itemNetCharge 0..1 MS and
    $EX_CHI_ItemDiscount named itemDiscount 0..1 MS and
    $EX_CHI_ItemClaimCat named itemClaimCat 0..1 MS and
    $EX_CHI_ItemRevDateTime named itemRevDate 0..1 MS and
    $EX_TH_ClaimItemCopay named itemCopay 0..1 MS
    // $EX_CHI_ItemCharge named itemCharge 0..1 MS and
    // $EX_CHI_ItemNetCharge named itemNetCharge 0..1 MS
//     $EX_TH_ClaimItemCost named itemCost 0..1 MS and
//     $EX_TH_ClaimItemPaid named itemPaid 0..1 MS and
//     $EX_TH_ClaimItemUnpaid named itemUnpaid 0..1 MS
  * category MS
  * category.coding ^slicing.discriminator.type = #value
  * category.coding ^slicing.discriminator.path = "system"
  * category.coding ^slicing.rules = #open
  * category.coding contains
      thCategory 0..1 MS
    //   adp 0..1 MS
  * category.coding[thCategory] ^short = "หมวดค่าใช้จ่ายบริการสาธารณสุข"
  * category.coding[thCategory] from $VS_TH_FeeCategory (required)
  * category.coding[thCategory].system = $CS_TH_FeeCategory (exactly)
//   * category.coding[adp] ^short = "รหัสบริการที่ยังไม่ได้จัดหมวด (ADP) สำหรับ e-Claim"
//   * category.coding[adp] from $VS_eClaim_AdpType (required)
//   * category.coding[adp].system = $CS_eClaim_AdpType (exactly)
  * productOrService MS
  * servicedDate MS
  * quantity MS
  * unitPrice MS
  * net MS
* total MS
* total.value MS
* total.currency MS
* total.currency = #THB (exactly)
