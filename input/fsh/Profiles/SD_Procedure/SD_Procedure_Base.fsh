Profile: ClaimConProcedureBase
Parent: Procedure
Id: claimcon-procedure-base
Title: "ClaimCon Procedure"
Description: "การทำหัตถการหรือการรักษา"
* ^url = $SD_Procedure_Base
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension contains
    $EX_TH_ProcedureProcedureType named procedureType 0..* MS
* status MS
* code MS
* code ^short = "รหัสการให้บริการ"
* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[=].path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    snomed 0..1 and
    icd9cm 0..1 and
    icd10tm 0..1 and
    local 0..1
* code.coding[snomed] ^short = "รหัสหัตถการมาตรฐานจาก SNOMED CT"
* code.coding[snomed] from $VS_HL7_SnomedProcedure (extensible)
* code.coding[snomed].system = $SCT (exactly)
* code.coding[icd9cm] ^short = "รหัสหัตถการมาตรฐานจาก ICD-9CM"
* code.coding[icd9cm] from $VS_INT_ICD9CMProcedure (extensible)
* code.coding[icd9cm].system = $ICD9CM (exactly)
* code.coding[icd10tm] ^short = "รหัสหัตถการมาตรฐานจาก ICD-10TM"
* code.coding[icd10tm] from $VS_TH_ICD10TM (extensible)
* code.coding[icd10tm].system = $CS_TH_ICD10TM (exactly)
* code.coding[local] ^short = "รหัส local code ของสถานพยาบาล"
* code.coding[local].system = $CS_TH_LocalProcedureCode (exactly)
* subject only Reference($SD_Patient_Base)
* performed[x] MS
* performed[x] only dateTime or Period or string
* performer MS
* location MS
