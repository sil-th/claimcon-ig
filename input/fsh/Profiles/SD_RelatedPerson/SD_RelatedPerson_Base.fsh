// Profile: MophPcRelatedPersonBase
// Parent: RelatedPerson
// Id: mophpc-relatedperson-base
// Title: "MoPH-PC RelatedPerson"
// Description: "บุคคลที่เกี่ยวข้องกับผู้ป่วย/ผู้รับบริการสุขภาพ"
// * ^url = $SD_RelatedPerson_Base
// * ^status = #draft
// * ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
// * ^jurisdiction = urn:iso:std:iso:3166#TH
// * identifier MS
// * identifier ^slicing.discriminator.type = #pattern
// * identifier ^slicing.discriminator.path = "type"
// * identifier ^slicing.rules = #open
// * identifier contains
//     cid 0..1 MS and
//     passportNo 0..* MS
// * identifier[cid] ^short = "เลขที่บัตรประชาชน"
// * identifier[cid] ^comment = "เลขประจำตัวประชาชน"
// * identifier[cid]
//   * type from $VS_TH_IdentifierType (extensible)
//   * type = $CS_TH_IdentifierType#cid
//   * system 1..
//   * system = $ID_ThaiCid (exactly)
//   * value 1..
//   * value obeys CID-length
//   * value ^example.label = "เลขประจำตัวประชาชน"
//   * value ^example.valueString = "1234567890123"
// * identifier[passportNo] ^short = "เลขที่ passport กรณีที่เป็นประชากรต่างด้าวที่มีเลขที่ passport"
// * identifier[passportNo]
//   * type from $VS_HL7_IdentifierType (extensible)
//   * type = $CS_HL7_IdentifierType#PPN
//   * system 1..
//   * system obeys Passport-uri
//   * system ^comment = "กำหนดระบบข้อมูลตามรูปแบบ http://hl7.org/fhir/sid/passport-[XXX] โดย [XXX] คือ รหัสประเทศสามตัวอักษร (alpha-3) ตามมาตรฐาน ISO 3166"
//   * system ^example.label = "Thai passport namespace"
//   * system ^example.valueUri = $ID_ThaiPassport
//   * value 1..
//   * value ^example.label = "Thai passport number"
//   * value ^example.valueString = "AA123456"
// * patient 1.. MS
// * patient only Reference($SD_Patient_Base)
// * relationship 1.. MS
// * name MS
// * name ^short = "ชื่อ-นามกสุล"
// * name.prefix
//   * extension contains $EX_TH_HumanNamePrefixCode named prefixCode 0..1
//   * extension[prefixCode] ^short = "รหัสคำนำหน้าชื่อ"
// * name ^slicing.discriminator[0].type = #value
// * name ^slicing.discriminator[=].path = "extension('http://hl7.org/fhir/StructureDefinition/language').value"
// * name ^slicing.rules = #open
// * name contains
//     thai 0..* MS and
//     english 0..* MS
// * name[thai] ^short = "ชื่อ-นามสกุล ภาษาไทย"
//   * extension contains $EX_HL7_Language named language 1..1 MS
//   * extension[language].valueCode = #th (exactly)
//   * family MS
//   * family ^short = "นามสกุล ภาษาไทย"
//   * given MS
//   * given ^short = "ชื่อ ภาษาไทย"
//   * prefix MS
//   * prefix ^short = "คำนำหน้า ภาษาไทย"
// * name[english] ^short = "ชื่อ-นามสกุล ภาษาอังกฤษ (ถ้ามี)"
//   * extension contains $EX_HL7_Language named language 1..1
//   * extension[language].valueCode = #en (exactly)
//   * family MS
//   * family ^short = "นามสกุล ภาษาอังกฤษ"
//   * given MS
//   * given ^short = "ชื่อ ภาษาอังกฤษ"
//   * prefix MS
//   * prefix ^short = "คำนำหน้า ภาษาอังกฤษ"
// * telecom MS
// * telecom ^slicing.discriminator.type = #value
// * telecom ^slicing.discriminator.path = "system"
// * telecom ^slicing.rules = #open
// * telecom contains phone 0..* MS
// * telecom[phone] ^short = "เบอร์โทรศัพท์ที่ใช้ในการติดต่อ"
// * telecom[phone].system = #phone (exactly)