Profile: ClaimConAccountBase
Parent: Account
Id: claimcon-account-base
Title: "ClaimCon Account"
Description: "ข้อมูลทางการเงิน"
* ^url = $SD_Account_Base
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension contains
  $EX_TH_AccountCoverageUse named coverageUse 0..* MS and 
  $EX_TH_AccountAccidentCoverage named accidentCoverage 0..* MS
// * status MS
// * subject only Reference($SD_Patient_Base)
// * subject MS
// * coverage MS
// * coverage.coverage only Reference($SD_Coverage_Base)
// * coverage.coverage MS
// * coverage.priority MS
// * owner only Reference($SD_Organization_Provider)
// * owner MS