Profile: ClaimConPractitionerBase
Parent: Practitioner
Id: claimcon-practitioner-base
Title: "ClaimCon Practitioner"
Description: "ผู้ให้บริการสุขภาพ"
* ^url = $SD_Practitioner_Base
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* identifier MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier contains
    cid 0..1 MS and
    proId 0..1 MS and
    doctorId 0..1 MS and
    nurseId 0..1 MS and
    pharmId 0..1 MS and
    dentId 0..1 MS and
    medtechId 0..1 MS and
    physioId 0..1 MS and
    vetId 0..1 MS and
    volunId 0..1 MS
* identifier[cid] ^short = "เลขประจำตัวประชาชน"
  * type from $VS_TH_IdentifierType (extensible)
  * type = $CS_TH_IdentifierType#cid
  * system 1..
  * system = $ID_ThaiCid (exactly)
  * value 1..
  * value obeys CID-length
  * value ^example.label = "เลขประจำตัวประชาชน"
  * value ^example.valueString = "1234567890123"
* identifier[proId] ^short = "เลขที่ผู้ให้บริการ ออกโดยโปรแกรม ไม่ซ้ำกันในสถานพยาบาลเดียวกัน"
  * type from $VS_TH_IdentifierType (extensible)
  * type = $CS_TH_IdentifierType#localProv
  * system 1..
  * system obeys ProID-uri
  * system ^example.label = "Provider ID namespace"
  * system ^example.valueUri = $ID_LO_Provider
  * value 1..
* identifier[doctorId] ^short = "เลขใบอนุญาตประกอบวิชาชีพเวชกรรม"
  * type from $VS_TH_IdentifierType (extensible)
  * type = $CS_TH_IdentifierType#proDoc
  * system 1..
  * value 1..
* identifier[nurseId] ^short = "เลขใบอนุญาตประกอบวิชาชีพพยาบาล"
  * type from $VS_TH_IdentifierType (extensible)
  * type = $CS_TH_IdentifierType#proNurse
  * system 1..
  * value 1..
* identifier[pharmId] ^short = "เลขใบอนุญาตประกอบวิชาชีพเภสัชกร"
  * type from $VS_TH_IdentifierType (extensible)
  * type = $CS_TH_IdentifierType#proPharm
  * system 1..
  * value 1..
* identifier[dentId] ^short = "เลขใบอนุญาตประกอบวิชาชีพทันตกรรม"
  * type from $VS_TH_IdentifierType (extensible)
  * type = $CS_TH_IdentifierType#proDent
  * system 1..
  * value 1..
* identifier[medtechId] ^short = "เลขใบอนุญาตประกอบวิชาชีพเทคนิคการแพทย์"
  * type from $VS_TH_IdentifierType (extensible)
  * type = $CS_TH_IdentifierType#proMedtech
  * system 1..
  * value 1..
* identifier[physioId] ^short = "เลขใบอนุญาตประกอบวิชาชีพกายภาพบำบัด"
  * type from $VS_TH_IdentifierType (extensible)
  * type = $CS_TH_IdentifierType#proPhysio
  * system 1..
  * value 1..
* identifier[vetId] ^short = "เลขใบอนุญาตประกอบวิชาชีพการสัตวแพทย์"
  * type from $VS_TH_IdentifierType (extensible)
  * type = $CS_TH_IdentifierType#proVet
  * system 1..
  * value 1..
* identifier[volunId] ^short = "เลขประจำตัวอาสาสมัครสาธารณสุขประจำหมู่บ้าน (อสม.)"
  * type from $VS_TH_IdentifierType (extensible)
  * type = $CS_TH_IdentifierType#healthVolun
  * system 1..
  * value 1..
