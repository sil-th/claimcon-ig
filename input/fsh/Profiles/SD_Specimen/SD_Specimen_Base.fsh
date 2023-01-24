// Profile: MophPcSpecimenBase
// Parent: Specimen
// Id: mophpc-specimen-base
// Title: "MoPH-PC Specimen"
// Description: "สิ่งส่งตรวจ"
// * ^url = $SD_Specimen_Base
// * ^status = #draft
// * ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
// * ^jurisdiction = urn:iso:std:iso:3166#TH
// * type MS
// * type ^short = "ประเภทสิ่งส่งตรวจ"
// * type.coding ^slicing.discriminator.type = #value
// * type.coding ^slicing.discriminator.path = "system"
// * type.coding ^slicing.rules = #open
// * type.coding contains snomed 0..1
// * type.coding[snomed].system 1..
// * type.coding[snomed].system = $SCT (exactly)
// * type.coding[snomed].code 1..
// * subject 1.. MS
// * subject only Reference($SD_Patient_Base)
// * receivedTime MS
// * receivedTime ^short = "วัน-เวลาที่ส่งผลไปตรวจ"
// * parent only Reference($SD_Specimen_Base)
// * collection MS
// * collection.collected[x] MS
// * collection.collected[x] ^short = "วัน-เวลาที่ตรวจ, วัดค่า, เก็บตัวอย่าง"
// * collection.collected[x] only dateTime or Period
// * processing MS
// * processing.time[x] MS
// * processing.time[x] ^short = "วัน-เวลาที่ตรวจ/ประเมินผล"
// * processing.time[x] only dateTime or Period