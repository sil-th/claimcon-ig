// Profile: MophPcMedicationBase
// Parent: Medication
// Id: mophpc-medication-base
// Title: "MoPH-PC Medication"
// Description: "รายละเอียดยา"
// * ^url = $SD_Medication_Base
// * ^status = #draft
// * ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
// * ^jurisdiction = urn:iso:std:iso:3166#TH
// * extension contains
//     $EX_TH_MedicationImageUrl named imageUrl 0..* MS
// * code 1.. MS
// * code.coding ^slicing.discriminator.type = #value
// * code.coding ^slicing.discriminator.path = "system"
// * code.coding ^slicing.rules = #open
// * code.coding contains
//     tmt 0..1 MS and
//     local 0..1 MS
// * code.coding[tmt] ^short = "รหัสยามาตรฐาน TMT"
// * code.coding[tmt].system 1..
// * code.coding[tmt].system = $CS_TMT (exactly)
// * code.coding[tmt].code 1..
// * code.coding[local] ^short = "รหัสยาของสถานพยาบาล"
// * code.coding[local].system 1..
// * code.coding[local].system = $CS_TH_LocalDrugCode (exactly)
// * code.coding[local].code 1..
// * form MS
// * form.coding ^slicing.discriminator.type = #value
// * form.coding ^slicing.discriminator.path = "system"
// * form.coding ^slicing.rules = #open
// * form.coding contains
//     snomed 0..1 and
//     edqm 0..1
// * form.coding[snomed] from $VS_SNOMEDCT_FormCodes (extensible)
// * form.coding[snomed].system 1..
// * form.coding[snomed].system = $SCT (exactly)
// * form.coding[snomed].code 1..
// * form.coding[edqm] from $VS_IPS_MedicineDoseform (extensible)
// * form.coding[edqm].system 1..
// * form.coding[edqm].system = $EDQM (exactly)
// * form.coding[edqm].code 1..
// * amount 1.. MS

