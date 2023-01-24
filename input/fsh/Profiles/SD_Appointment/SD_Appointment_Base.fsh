Profile: ClaimConAppointmentBase
Parent: Appointment
Id: claimcon-appointment-base
Title: "ClaimCon Appointment"
Description: "ข้อมูลการนัดมารับบริการครั้งต่อไปของผู้ที่มารับบริการ"
* ^url = $SD_Appointment_Base
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
// * status MS
// * status ^short = "สถานะการนัด (มองจากฝั่งต้นทางการนัด)"
// * serviceCategory MS
// * serviceCategory ^short = "บริการที่นัดรับ"
// * serviceCategory from $VS_Std15_AppointServiceCategory (extensible)
// * reasonCode MS
// * reasonCode ^short = "รหัสโรคหรือกิจกรรมที่นัด"
// * reasonCode.coding ^slicing.discriminator.type = #value
// * reasonCode.coding ^slicing.discriminator.path = "system"
// * reasonCode.coding ^slicing.rules = #open
// * reasonCode.coding contains
//     icd10 0..1 MS and
//     snomed 0..1 MS and
//     thcc 0..1 MS
// * reasonCode.coding[icd10] from $VS_ICD10 (extensible)
// * reasonCode.coding[icd10].system 1..
// * reasonCode.coding[icd10].system = $ICD10 (exactly)
// * reasonCode.coding[icd10].code 1..
// * reasonCode.coding[snomed] from $VS_SNOMED_INT (extensible)
// * reasonCode.coding[snomed].system 1..
// * reasonCode.coding[snomed].system = $SCT (exactly)
// * reasonCode.coding[snomed].code 1..
// * reasonCode.coding[thcc] from $VS_THCC_AppointServiceType (extensible)
// * reasonCode.coding[thcc].system 1..
// * reasonCode.coding[thcc].system = $CS_THCC_AppointServiceType (exactly)
// * reasonCode.coding[thcc].code 1..
// * description MS
// * supportingInformation MS
// * supportingInformation ^slicing.discriminator.type = #type
// * supportingInformation ^slicing.discriminator.path = "$this"
// * supportingInformation ^slicing.rules = #open
// * supportingInformation contains coverage 0..* MS
// * supportingInformation[coverage] only Reference($SD_Coverage_Base)
// * start MS
// * start ^short = "วัน-เวลาที่นัดมารับบริการ"
// * end MS
// * end ^short = "วัน-เวลาที่สิ้นสุดการรับบริการในนั้นนัด"
// * patientInstruction MS
// * patientInstruction ^short = "คำแนะนำการปฏิบัติตนของผู้ป่วย"
// * created MS
// * created ^short = "วัน-เวลาที่สร้างนัดนี้"
// * comment MS
// * comment ^short = "รายละเอียดอื่น ๆ เพิ่มเติมเกี่ยวกับการนัด"
// * participant MS
// * participant.actor.type 1..1 MS
// // Slice by value because not all slice can reference
// * participant ^slicing.discriminator.type = #value
// * participant ^slicing.discriminator.path = "actor.type"
// * participant ^slicing.rules = #open
// * participant contains
//     patient 1..1 MS and
//     practitioner 0..* MS and
//     location 0..* MS
// * participant[patient].actor only Reference($SD_Patient_Base)
// * participant[patient].actor.type MS
// * participant[patient].actor.type = "Patient" (exactly)
// * participant[patient].actor.identifier MS
// * participant[patient].actor.identifier ^short = "รหัสประจำตัวผู้ป่วย"
// * participant[practitioner] ^short = "ผู้ให้บริการ ที่นัดไปพบ"
// * participant[practitioner].actor only Reference($SD_Practitioner_Base)
// * participant[practitioner].actor.type MS
// * participant[practitioner].actor.type = "Practitioner" (exactly)
// * participant[practitioner].actor.identifier MS
// * participant[practitioner].actor.identifier ^short = "รหัสประจำตัวผู้ให้บริการ"
// * participant[location] ^short = "ชื่อคลีนิค หรือห้องตรวจที่นัดรับบริการ"
// * participant[location].actor only Reference($SD_Location_Department)
// * participant[location].actor.type MS
// * participant[location].actor.type = "Location" (exactly)
// * participant[location].actor.identifier MS
// * participant[location].actor.identifier ^short = "รหัสคลินิก หรือห้องตรวจ"
* requestedPeriod
  * start MS
