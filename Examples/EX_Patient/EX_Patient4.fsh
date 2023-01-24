Instance: patient-patient4
InstanceOf: $SD_Patient_Base
Title: "ตัวอย่าง Patient: ผู้ป่วยรายที่ 4 หญิงไทย โรคเรื้อรัง"
Description: "แสดงการบันทึกข้อมูลอย่างย่อ"
Usage: #example
* identifier[0]
  * use = #official
  * type
    // * coding[0] = $CS_HL7_IdentifierType#NI "National unique individual identifier"
    * coding[0] = $CS_TH_IdentifierType#cid "เลขประจำตัวประชาชนไทย"
  * system = $ID_ThaiCid
  * value = "2650591524440"
  * period
    * start = "2018-04-25"
    * end = "2022-04-25"
* identifier[+]
  * use = #secondary
  * type
    // * coding[0] = $CS_HL7_IdentifierType#PN "Person number"
    * coding[0] = $CS_TH_IdentifierType#localPid "รหัสประจำตัวบุคคลของหน่วยบริการ"
  * system = $ID_LO_PID
  * value = "65-XXXXX"
  * period
    * start = "2018-04-25"
* identifier[+]
  * use = #secondary
  * type
    // * coding[0] = $CS_HL7_IdentifierType#MR "Medical record number"
    * coding[0] = $CS_TH_IdentifierType#localHn "เลข Hospital Number (HN) ของหน่วยบริการ"
  * system = $ID_LO_HN
  * value = "65-XXXXX"
* active = true
* name[0]
  * extension
    * url = $EX_HL7_Language
    * valueCode = #th
  * text = "นาง สมควร ใจดี"
  * family = "ใจดี"
  * given = "สมควร"
  * prefix = "นาง"
* telecom[0]
  * system = #phone
  * value = "088-8888888"
  * use = #mobile
* telecom[+]
  * system = #email
  * value = "somkuanjaidee@jaidee.com"
* gender = #female
* birthDate = "1990-04-25"
* address[0]
  * extension[0]
    * url = $EX_TH_AddressDopaCode
    * valueCodeableConcept = $CS_DOPA_Location#342001 "จังหวัดอุบลราชธานี อำเภอตาลสุม ตำบลตาลสุม"
  * extension[+]
    * url = $EX_HL7_Geolocation
    * extension[0]
      * url = "latitude"
      * valueDecimal = 78.31809
    * extension[+]
      * url = "longitude"
      * valueDecimal = -133.03485
  * extension[+]
    * url = $EX_TH_AddressStructuredLine
    * extension[0]
      * url = "number"
      * valueString = "123"
    * extension[+]
      * url = "villageNo"
      * valueString = "หมู่ที่ 20"
    * extension[+]
      * url = "road"
      * valueString = "ถนนสมเด็จ"
  * use = #home
  * text = "123 หมู่ที่ 20 ถนนสมเด็จ ตำบลตาลสุม อำเภอตาลสุม จังหวัดอุบลราชธานี 34330"
  * line = "123 หมู่ที่ 20 ถนนสมเด็จ"
  * city = "ตาลสุม"
  * district = "ตาลสุม"
  * state = "อุบลราชธานี"
  * postalCode = "34330"
* maritalStatus
  * coding[0] = $CS_HL7_MaritalStatus#M "Married"
  * coding[+] = $CS_THCC_Marital#2 "คู่"
