Instance: practitioner-pharmacist1
InstanceOf: $SD_Practitioner_Base
Title: "ตัวอย่าง Practitioner: เภสัชกร รายที่ 1"
Description: "ข้อมูลเภสัชกรรายที่ 1"
Usage: #example
* identifier[0]
  * use = #official
  * type
    // * coding[0] = $CS_HL7_IdentifierType#NI "National unique individual identifier"
    * coding[0] = $CS_TH_IdentifierType#cid "เลขประจำตัวประชาชนไทย"
  * system = $ID_ThaiCid
  * value = "2650515222440"
  * period
    * start = "2018-04-25"
    * end = "2022-04-25"
* identifier[+]
  * use = #secondary
  * type
    // * coding[0] = $CS_HL7_IdentifierType#RPH "Pharmacist license number"
    * coding[0] = $CS_TH_IdentifierType#proPharm "เลขใบอนุญาตประกอบวิชาชีพเภสัชกร"
  * system = $ID_ThaiPharmacist
  * value = "34222"
* active = true
* name[0]
  * extension
    * url = $EX_HL7_Language
    * valueCode = #th
  * text = "ภญ. สมบูรณ์ จริงใจ"
  * family = "จริงใจ"
  * given = "สมบูรณ์"
  * prefix = "ภญ."
* gender = #female
* birthDate = "1970-04-25"
* qualification
  * code
    * coding[0] = $SCT#46255001 "Pharmacist"
  * period
    * start = "1996-04-25"