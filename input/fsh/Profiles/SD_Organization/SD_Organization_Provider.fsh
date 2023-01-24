Profile: ClaimConOrganizationProvider
Parent: Organization
Id: claimcon-organization-provider
Title: "ClaimCon Organization: Provider"
Description: "หน่วยบริการสุขภาพ"
* ^url = $SD_Organization_Provider
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* identifier MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier contains hcode 0..1
* identifier[hcode] ^short = "รหัสสถานพยาบาล 5 หลัก หรือ 9 หลัก"
* identifier[hcode].type from $VS_TH_IdentifierType (extensible)
* identifier[hcode].type = $CS_TH_IdentifierType#hcode
* identifier[hcode].system 1..
* identifier[hcode].system = $ID_Hcode (exactly)
* identifier[hcode].value 1..
* identifier[hcode].value obeys hcode-length
* name MS
* name ^short = "ชื่อสถานพยาบาล"
// * partOf only Reference($SD_Organization_Provider)
// * partOf MS