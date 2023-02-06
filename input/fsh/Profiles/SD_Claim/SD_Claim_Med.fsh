Profile: ClaimConClaimMed
Parent: Claim
Id: claimcon-claim-med
Title: "ClaimCon Claim: Medication"
Description: "ค่าใช้จ่ายการรับบริการด้านยา"
* ^url = $SD_Claim_Med
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension ^slicing.discriminator[0].type = #value
* extension ^slicing.discriminator[=].path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains
    $EX_CHI_ReimburserType named reimburserType 0..1 MS and
    $EX_CHI_TotalCharge named totalCharge 0..1 MS and
    $EX_TH_ClaimTotalCopay named totalCopay 0..1 MS and
    $EX_CHI_TotalOtherPay named totalOtherPay 0..1 MS
* identifier MS
* identifier ^slicing.discriminator[0].type = #pattern
* identifier ^slicing.discriminator[=].path = "type"
* identifier ^slicing.rules = #open
* identifier contains
    invNo 0..1 
* identifier[invNo].type = $CS_TH_IdentifierType#localInvNo
* identifier[invNo] ^short = "เลขที่สำคัญการเรียกเก็บค่ารักษา"
* identifier[invNo].system 1..
* identifier[invNo].system obeys Inv-uri
* identifier[invNo].system ^example.label = "INV namespace"
* identifier[invNo].system ^example.valueUri = $ID_LO_INV
* identifier[invNo].value 1..
* status MS
* type = $CS_HL7_ClaimType#institutional
* patient only Reference($SD_Patient_Base)
* patient MS
* created MS
* provider only Reference($SD_Organization_Provider)
* provider MS
* insurance MS
* insurance.coverage MS
* item MS
  * extension contains
    $EX_CHI_ItemCharge named itemCharge 0..1 MS and
    $EX_CHI_ItemNetCharge named itemNetCharge 0..1 MS and 
    $EX_CHI_ClaimCondition named claimCondition 0..1 MS
  * category MS
  * category.coding ^slicing.discriminator.type = #value
  * category.coding ^slicing.discriminator.path = "system"
  * category.coding ^slicing.rules = #open
  * category.coding contains
      thCategory 0..1 MS 
  * category.coding[thCategory] ^short = "หมวดค่าใช้จ่ายบริการสาธารณสุข"
  * category.coding[thCategory] from $VS_TH_FeeCategory (required)
  * category.coding[thCategory].system = $CS_TH_FeeCategory (exactly)
  * productOrService MS
  * quantity MS
  * unitPrice MS
  * net MS
* item.detail.extension contains
  $EX_CHI_ItemCharge named itemCharge 0..1 MS and
  $EX_CHI_ItemNetCharge named itemNetCharge 0..1 MS and
  $EX_CHI_ClaimCondition named claimCondition 0..1 MS
* item.detail.subDetail.extension contains
  $EX_CHI_ItemCharge named itemCharge 0..1 MS and
  $EX_CHI_ItemNetCharge named itemNetCharge 0..1 MS and
  $EX_CHI_ClaimCondition named claimCondition 0..1 MS
* total MS
  * value MS
  * currency MS
  * currency = #THB (exactly)
