Instance: practitioner-nurse1
InstanceOf: $SD_Practitioner_Base
Title: "ตัวอย่าง Practitioner: พยาบาล รายที่ 1"
Description: "ข้อมูลพยาบาลรายที่ 1"
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
    // * coding[0] = $CS_HL7_IdentifierType#RN "Registered Nurse Number"
    * coding[0] = $CS_TH_IdentifierType#proNurse "เลขใบอนุญาตประกอบวิชาชีพพยาบาล"
  * system = $ID_ThaiNurse
  * value = "23222"
* active = true
* name[0]
  * extension
    * url = $EX_HL7_Language
    * valueCode = #th
  * text = "นาง สมอมร จริงใจ"
  * family = "จริงใจ"
  * given = "สมอมร"
  * prefix = "นาง"
* gender = #female
* birthDate = "1960-04-25"
* qualification
  * code
    * coding[0] = $SCT#224535009 "Registered nurse"
  * period
    * start = "1986-04-25"
  * issuer
    * extension[0]
      * url = $EX_TH_PractitionerQualificationIssuer
      * valueCodeableConcept
        * coding[0] = $CS_THCC_QualificationIssuer#02 "สภาการพยาบาล"
    * display = "สภาการพยาบาล"