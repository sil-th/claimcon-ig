Profile: ClaimConCoverageBase
Parent: Coverage
Id: claimcon-coverage-base
Title: "ClaimCon Coverage"
Description: "ข้อมูลสิทธิการรักษาพยาบาล"
* ^url = $SD_Coverage_Base
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension contains
  $EX_TH_CoverageContractedProvider named provider 0..* MS
* identifier MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier contains cid 0..1
* identifier[cid] ^short = "เลขประจำตัวประชาชน"
* identifier[cid].type = $CS_TH_IdentifierType#cid
* identifier[cid].system 1..
* identifier[cid].system = $ID_ThaiCid (exactly)
* identifier[cid].value 1..
* identifier[cid].value obeys CID-length
* type MS
* type from $VS_TH_CoverageType (extensible)
* beneficiary only Reference($SD_Patient_Base)
* beneficiary MS
* period.end MS
* class MS