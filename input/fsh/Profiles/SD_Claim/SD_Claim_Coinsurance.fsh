Profile: ClaimConClaimCoinsurance
Parent: Claim
Id: claimcon-claim-coinsurance
Title: "ClaimCon Claim: IPD Coinsurance"
Description: "ค่าใช้จ่ายที่เบิกได้จากสิทธิประกันสุขภาพอื่น"
* ^url = $SD_Claim_Coinsurance
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
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
* patient MS
* patient only Reference($SD_Patient_Base)
* created MS
* provider only Reference($SD_Organization_Provider)
* provider MS
* insurance MS
* insurance.coverage MS
* accident MS
  * date MS
* accident.date.extension contains $EX_TH_ClaimAccidentDateTime named accidentDateTime 0..1 MS
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
