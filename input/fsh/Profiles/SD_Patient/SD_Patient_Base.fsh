Profile: ClaimConPatientBase
Parent: Patient
Id: claimcon-patient-base
Title: "ClaimCon Patient"
Description: "ผู้ป่วย/ผู้รับบริการสุขภาพ"
* ^url = $SD_Patient_Base
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension contains
  $EX_TH_Patient_Nationality named nationality 0..* MS
//   $EX_TH_PatientRace named race 0..* MS and
//   $SD_Patient_EX_Religion named religion 0..1 MS and
//   $SD_Patient_EX_Disability named disability 0..* MS and
//   $EX_TH_PatientEducationLevel named educationLevel 0..* MS and
//   $EX_TH_PatientPersonStatus named personStatus 0..* MS and
//   $EX_TH_PatientPidRemoveReason named pidRemoveReason 0..* MS
* extension[nationality] ^short = "สัญชาติของผู้ป่วย"
// * extension[race] ^short = "เชื้อชาติของผู้ป่วย"
// * extension[religion] ^short = "ความเชื่อทางศาสนาของผู้ป่วย"
// * extension[disability] ^short = "ประเภทความพิการ"
// * extension[educationLevel] ^short = "ระดับการศึกษาสูงสุดของผู้ป่วย"
// * extension[personStatus] ^short = "สถานะบุคคลของผู้ป่วย"
// * extension[pidRemoveReason] ^short = "สถานะ/สาเหตุการจำหน่ายจากเขตรับผิดชอบ (ถ้ามี)"
* identifier MS
* identifier ^slicing.discriminator[0].type = #pattern
* identifier ^slicing.discriminator[=].path = "type"
* identifier ^slicing.rules = #open
* identifier contains
    // pid 0..1 MS and
    cid 0..1 MS and
    hn 0..1 MS and
    passportNo 0..1
// * identifier[pid] ^short = "เลขทะเบียนของบุคคลที่มาขึ้นทะเบียนในสถานบริการนั้นๆ"
// * identifier[pid]
//   * type from $VS_TH_IdentifierType (extensible)
//   * type = $CS_TH_IdentifierType#localPid
//   * system 1..
//   * system obeys PID-uri
//   * system ^example.label = "PID namespace"
//   * system ^example.valueUri = $ID_LO_PID
//   * value 1..
//   * value ^example.label = "เลขทะเบียนบุคคล"
//   * value ^example.valueString = "123456789012345"
//   * period
//     * start ^short = "วันที่ย้ายเข้ามาเขตพื้นที่รับผิดชอบ"
//     * end ^short = "วันที่จำหน่าย"
* identifier[cid] ^short = "เลขประจำตัวประชาชน"
* identifier[cid]
  * type from $VS_TH_IdentifierType (extensible)
  * type = $CS_TH_IdentifierType#cid
  * system 1..
  * system = $ID_ThaiCid (exactly)
  * value 1..
  * value obeys CID-length
  // * value ^example.label = "เลขประจำตัวประชาชน"
  // * value ^example.valueString = "1234567890123"
* identifier[hn] ^short = "เลขประจำตัวผู้ป่วย (HN)"
* identifier[hn]
  * type from $VS_TH_IdentifierType (extensible)
  * type = $CS_TH_IdentifierType#localHn
  * system 1..
  * system obeys HN-uri
  // * system ^example.label = "HN namespace"
  // * system ^example.valueUri = $ID_LO_HN
  * value 1..
  // * value ^example.label = "เลขประจำตัวผู้ป่วย (HN)"
  // * value ^example.valueString = "123456"
* identifier[passportNo] ^short = "เลขที่ passport กรณีที่เป็นประชากรต่างด้าวที่มีเลขที่ passport"
* identifier[passportNo]
  * type from $VS_HL7_IdentifierType (extensible)
  * type = $CS_HL7_IdentifierType#PPN
  * system 1..
  * system obeys Passport-uri
  * system ^comment = "กำหนดระบบข้อมูลตามรูปแบบ http://hl7.org/fhir/sid/passport-[XXX] โดย [XXX] คือ รหัสประเทศสามตัวอักษร (alpha-3) ตามมาตรฐาน ISO 3166"
  // * system ^example.label = "Thai passport namespace"
  // * system ^example.valueUri = $ID_ThaiPassport
  * value 1..
  // * value ^example.label = "Thai passport number"
  // * value ^example.valueString = "AA123456"
* name MS
* name ^short = "ชื่อ-นามกสุล"
  * family MS
  * family ^short = "นามสกุล ภาษาไทย"
  * given MS
  * given ^short = "ชื่อ ภาษาไทย"
  * prefix MS
// * telecom MS
// * telecom ^slicing.discriminator[0].type = #value
// * telecom ^slicing.discriminator[=].path = "system"
// * telecom ^slicing.discriminator[+].type = #value
// * telecom ^slicing.discriminator[=].path = "use"
// * telecom ^slicing.rules = #open
// * telecom contains
//     phone 0..* MS and
//     mobilePhone 0..* MS and
//     email 0..* MS
// * telecom[phone] ^short = "เบอร์โทรศัพท์ติดต่อที่ไม่ใช่มือถือ ไม่ต้องใส่เครื่องหมายขีด (-)"
//   * system = #phone (exactly)
//   * use = #home (exactly)
//   * value MS
// * telecom[mobilePhone] ^short = "เบอร์โทรศัพท์มือถือ ไม่ต้องใส่เครื่องหมายขีด (-)"
//   * system = #phone (exactly)
//   * use = #mobile (exactly)
//   * value MS
// * telecom[email] ^short = "E-mail สำหรับติดต่อ"
//   * system = #email (exactly)
//   * value MS
* gender MS
* gender ^short = "เพศ"
* birthDate MS
* birthDate ^short = "วันเกิด"
* birthDate ^comment = "วันเดือนปีเกิด (ระบุในรูปแบบ YYYY-MM-DD) หากไม่ทราบวัน เดือนที่เกิด แต่ทราบ ค.ศ เกิด ให้ใส่แต่ค.ศ."
* address MS
  * extension contains
    $EX_TH_AddressDopaCode named addressCode 0..1 MS and
    $EX_TH_AddressStructuredLine named structuredLine 0..1 MS
  * extension[addressCode] ^short = "รหัสที่อยู่ ตามกรมการปกครอง"
  * extension[structuredLine] ^short = "รายละเอียดที่อยู่"
  * type MS
  * text MS
  * line MS
  * city MS
  * district MS
  * state MS
  * postalCode MS
* maritalStatus MS
* maritalStatus ^short = "สถานะสมรส"
* maritalStatus.coding ^slicing.discriminator[0].type = #value
* maritalStatus.coding ^slicing.discriminator[=].path = "system"
* maritalStatus.coding ^slicing.rules = #open
* maritalStatus.coding contains
    chi 0..1
* maritalStatus.coding[chi] from $VS_CHI_Marital (extensible)
// * generalPractitioner MS
// * generalPractitioner ^short = "แพทย์ประจำตัว หรือสถานพยาบาลปฐมภูมิของบุคคล"
// * generalPractitioner only Reference($SD_Practitioner_Base or $SD_Organization_Provider or $SD_PractitionerRole_Base )
