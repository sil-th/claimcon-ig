Profile: ClaimConConditionBase
Parent: Condition
Id: claimcon-condition-base
Title: "ClaimCon Condition"
Description: "การวินิจฉัยโรค/ปัญหาสุขภาพ/อาการทางคลินิก"
* ^url = $SD_Condition_Base
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code MS
* code ^short = "คำวินิจฉัยโรค/ภาวะโรค"
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    icd10 0..1 MS and
    snomed 0..1 MS
* code.coding[icd10] from $VS_ICD10 (required)
* code.coding[icd10].system 1..
* code.coding[icd10].system = $ICD10 (exactly)
* code.coding[icd10].code 1..
* code.coding[snomed] from $VS_SNOMED_INT (required)
* code.coding[snomed].system 1..
* code.coding[snomed].system = $SCT (exactly)
* code.coding[snomed].code 1..
* subject only Reference($SD_Patient_Base)
* recordedDate MS
* asserter only Reference($SD_Practitioner_Base)
* asserter MS
