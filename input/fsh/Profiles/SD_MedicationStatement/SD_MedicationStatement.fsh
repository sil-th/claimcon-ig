// Profile: MophPcMedicationStatementBase
// Parent: MedicationStatement
// Id: mophpc-medicationstatement-base
// Title: "MoPH-PC MedicationStatement"
// Description: "การใช้ยาของผู้รับบริการ"
// * ^url = $SD_MedicationStatement_Base
// * ^status = #draft
// * ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
// * ^jurisdiction = urn:iso:std:iso:3166#TH
// * extension ^slicing.discriminator[0].type = #value
// * extension ^slicing.discriminator[=].path = "url"
// * extension ^slicing.rules = #open
// * extension contains
//     $EX_TH_MedicationRequestSource named medicationSource 0..* MS and
//     $EX_TH_MedicationRequestNedCriteria named npc 0..* MS and
//     $EX_TH_MedicationRequestApprovedNo named approvedNo 0..* MS
// * status 1.. MS
// * category MS
// * category.coding ^slicing.discriminator[0].type = #value
// * category.coding ^slicing.discriminator[=].path = "system"
// * category.coding ^slicing.rules = #open
// * category.coding contains
//     eclaim 1..1 MS
// * category.coding[eclaim] from $VS_eClaim_MedicationCategory (extensible)
// * category.coding[eclaim].system 1..
// * category.coding[eclaim].code 1..
// * medication[x] 1.. MS
// * medication[x] only CodeableConcept
// * medicationCodeableConcept MS
// * medicationCodeableConcept.coding ^slicing.discriminator.type = #value
// * medicationCodeableConcept.coding ^slicing.discriminator.path = "system"
// * medicationCodeableConcept.coding ^slicing.rules = #open
// * medicationCodeableConcept.coding contains
//     tmt 0..1 MS and
//     local 0..1 MS
// * medicationCodeableConcept.coding[tmt] ^short = "รหัสยามาตรฐาน TMT"
// * medicationCodeableConcept.coding[tmt] from $VS_TMT (extensible)
// * medicationCodeableConcept.coding[tmt].system 1..
// * medicationCodeableConcept.coding[tmt].system = $CS_TMT (exactly)
// * medicationCodeableConcept.coding[tmt].code 1..
// * medicationCodeableConcept.coding[local] ^short = "รหัสยาของสถานพยาบาล"
// * medicationCodeableConcept.coding[local].system 1..
// * medicationCodeableConcept.coding[local].system = $CS_TH_LocalDrugCode (exactly)
// * medicationCodeableConcept.coding[local].code 1..
// * subject only Reference($SD_Patient_Base)
// * subject MS
// * effective[x] MS
// * effectivePeriod MS
// * dateAsserted MS
// * informationSource only Reference($SD_Patient_Base or $SD_Organization_Provider)
// * informationSource MS
// * dosage MS
// * dosage.text MS
