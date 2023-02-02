Profile: ClaimConObservationLab
Parent: Observation
Id: claimcon-observation-lab
Title: "ClaimCon Observation: Lab"
Description: "การตรวจทางห้องปฏิบัติการ"
* ^url = $SD_Observation_Lab
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code MS
* code ^short = "รหัสการตรวจทางห้องปฏิบัติการ"
* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[=].path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    tmlt 0..1 MS and
    loinc 0..1 MS and
    snomed 0..1
* code.coding[tmlt] ^short = "รหัสมาตรฐาน TMLT"
* code.coding[tmlt] from $VS_TMLT (extensible)
* code.coding[loinc] ^short = "รหัสมาตรฐาน LOINC"
* code.coding[loinc] from $VS_LNC_Obs (extensible)
* code.coding[snomed] ^short = "รหัสมาตรฐาน SNOMED CT"
* code.coding[snomed] from $VS_SNOMED_INT (extensible)
* value[x] MS
* value[x] ^short = "ผลของการตรวจทางห้องปฏิบัติการ"