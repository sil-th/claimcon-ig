Instance: practitioner-doctor2
InstanceOf: $SD_Practitioner_Base
Title: "ตัวอย่าง Practitioner: แพทย์ รายที่ 2"
Description: "ข้อมูลแพทย์รายที่ 2"
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
    // * coding[0] = $CS_HL7_IdentifierType#MD "Medical License number"
    * coding[0] = $CS_TH_IdentifierType#proDoc "เลขใบอนุญาตประกอบวิชาชีพเวชกรรม"
  * system = $ID_ThaiDoctor
  * value = "34222"
* active = true
* name[0]
  * extension
    * url = $EX_HL7_Language
    * valueCode = #th
  * text = "พญ. สมศรี จริงใจ"
  * family = "จริงใจ"
  * given = "สมศรี"
  * prefix = "พญ."
* gender = #female
* birthDate = "1970-04-25"
* qualification
  * code
    * coding[0] = $SCT#309343006 "Physician"
  * period
    * start = "1996-04-25"