// Profile: MophPcObservationLabBase
// Parent: Observation
// Id: mophpc-observation-lab-base
// Title: "MoPH-PC Observation: Lab"
// Description: "การตรวจทางห้องปฏิบัติการ"
// * ^url = $SD_Observation_LabBase
// * ^status = #draft
// * ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
// * ^jurisdiction = urn:iso:std:iso:3166#TH
// * status MS
// * category MS
// * category ^slicing.discriminator[0].type = #pattern
// * category ^slicing.discriminator[=].path = "$this"
// * category ^slicing.rules = #open
// * category contains hl7 0..1
// * category[hl7] from $VS_HL7_ObservationCat (extensible)
// * category[hl7] = $CS_HL7_ObservationCat#laboratory
// * code MS
// * code ^short = "รหัสการตรวจทางห้องปฏิบัติการ"
// * code.coding ^slicing.discriminator[0].type = #value
// * code.coding ^slicing.discriminator[=].path = "system"
// * code.coding ^slicing.rules = #open
// * code.coding contains
//     tmlt 0..1 MS and
//     loinc 0..1 MS and
//     snomed 0..1
// * code.coding[tmlt] ^short = "รหัสมาตรฐาน TMLT"
// * code.coding[tmlt] from $VS_TMLT (extensible)
// * code.coding[tmlt].system 1..
// * code.coding[tmlt].system = $CS_TMLT (exactly)
// * code.coding[tmlt].code 1..
// * code.coding[loinc] ^short = "รหัสมาตรฐาน LOINC"
// * code.coding[loinc] from $VS_LNC_Obs (extensible)
// * code.coding[loinc].system 1..
// * code.coding[loinc].system = $LNC (exactly)
// * code.coding[loinc].code 1..
// * code.coding[snomed] ^short = "รหัสมาตรฐาน SNOMED CT"
// * code.coding[snomed] from $VS_SNOMED_INT (extensible)
// * code.coding[snomed].system 1..
// * code.coding[snomed].system = $SCT (exactly)
// * code.coding[snomed].code 1..
// * subject 1.. MS
// * subject only Reference($SD_Patient_Base)
// * effective[x] MS
// * effective[x] only dateTime or Period
// * value[x] MS
// * value[x] only Quantity or CodeableConcept or string or boolean or integer or Range or Ratio
// * value[x] ^short = "ผลของการตรวจทางห้องปฏิบัติการ"
// * interpretation MS
// * interpretation ^short = "การแปรผลการตรวจ"
// * note MS
// * note ^short = "หมายเหตุเพิ่มเติม"
// * specimen MS
// * specimen ^short = "สิ่งส่งตรวจ"
// * specimen only Reference($SD_Specimen_Base)
// * referenceRange MS
// * referenceRange ^short = "ช่วงค่าอ้างอิง"