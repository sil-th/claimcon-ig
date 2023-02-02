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
* extension[nationality] ^short = "สัญชาติของผู้ป่วย"
* identifier MS
* identifier ^slicing.discriminator[0].type = #pattern
* identifier ^slicing.discriminator[=].path = "type"
* identifier ^slicing.rules = #open
* identifier contains
    cid 0..1 MS and
    hn 0..1 MS and
    passportNo 0..1
* identifier[cid] ^short = "เลขประจำตัวประชาชน"
* identifier[cid]
  * type from $VS_TH_IdentifierType (extensible)
  * type = $CS_TH_IdentifierType#cid
  * system = $ID_ThaiCid (exactly)
  * value obeys CID-length
* identifier[hn] ^short = "เลขประจำตัวผู้ป่วย (HN)"
* identifier[hn]
  * type from $VS_TH_IdentifierType (extensible)
  * type = $CS_TH_IdentifierType#localHn
  * system obeys HN-uri
* identifier[passportNo] ^short = "เลขที่ passport กรณีที่เป็นประชากรต่างด้าวที่มีเลขที่ passport"
* identifier[passportNo]
  * type from $VS_HL7_IdentifierType (extensible)
  * type = $CS_HL7_IdentifierType#PPN
  * system obeys Passport-uri
  * system ^comment = "กำหนดระบบข้อมูลตามรูปแบบ http://hl7.org/fhir/sid/passport-[XXX] โดย [XXX] คือ รหัสประเทศสามตัวอักษร (alpha-3) ตามมาตรฐาน ISO 3166"
* name MS
* name ^short = "ชื่อ-นามกสุล"
  * family MS
  * family ^short = "นามสกุล ภาษาไทย"
  * given MS
  * given ^short = "ชื่อ ภาษาไทย"
  * prefix MS
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
    hl7 0..1 MS and
    chi 0..1 MS and
    eclaim 0..1 MS
* maritalStatus.coding[hl7] from $VS_HL7_MaritalStatus (extensible)
* maritalStatus.coding[chi] from $VS_CHI_Marital (extensible)
* maritalStatus.coding[eclaim] from $VS_THCC_Marital (extensible)