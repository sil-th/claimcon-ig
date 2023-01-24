Instance: relatedperson-patient1-mother
InstanceOf: $SD_RelatedPerson_Base
Title: "ตัวอย่าง RelatedPerson: มารดาของผู้ป่วยรายที่ 1"
Description: "มารดาของผู้ป่วยรายที่ 1"
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
* patient = Reference(Patient/patient-patient1)
* relationship = $CS_HL7_RelationshipType#MTH "mother"
* name[0]
  * extension
    * url = $EX_HL7_Language
    * valueCode = #th
  * text = "นาง มารดา ใจดี"
  * family = "ใจดี"
  * given = "มารดา"
  * prefix = "นาง"
* telecom[0]
  * system = #phone
  * value = "088-8888888"

Instance: relatedperson-patient1-father
InstanceOf: $SD_RelatedPerson_Base
Title: "ตัวอย่าง RelatedPerson: บิดาของผู้ป่วยรายที่ 1"
Description: "บิดาของผู้ป่วยรายที่ 1"
Usage: #example
* identifier[0]
  * use = #official
  * type
    * coding[0] = $CS_HL7_IdentifierType#NI "National unique individual identifier"
    * coding[+] = $CS_TH_IdentifierType#cid "เลขประจำตัวประชาชนไทย"
  * system = $ID_ThaiCid
  * value = "2650591524440"
  * period
    * start = "2018-04-25"
    * end = "2022-04-25"
* patient = Reference(Patient/patient-patient1)
* relationship = $CS_HL7_RelationshipType#FTH "father"
* name[0]
  * extension
    * url = $EX_HL7_Language
    * valueCode = #th
  * text = "นาย บิดา ใจดี"
  * family = "ใจดี"
  * given = "บิดา"
  * prefix = "นาย"
* telecom[0]
  * system = #phone
  * value = "088-8888888"

Instance: relatedperson-patient1-spouse
InstanceOf: $SD_RelatedPerson_Base
Title: "ตัวอย่าง RelatedPerson: คู่สมรสของผู้ป่วยรายที่ 1"
Description: "คู่สมรสของผู้ป่วยรายที่ 1"
Usage: #example
* identifier[0]
  * use = #official
  * type
    * coding[0] = $CS_HL7_IdentifierType#NI "National unique individual identifier"
    * coding[+] = $CS_TH_IdentifierType#cid "เลขประจำตัวประชาชนไทย"
  * system = $ID_ThaiCid
  * value = "2650591524440"
  * period
    * start = "2018-04-25"
    * end = "2022-04-25"
* patient = Reference(Patient/patient-patient1)
* relationship = $CS_HL7_RelationshipType#SPS "spouse"
* name[0]
  * extension
    * url = $EX_HL7_Language
    * valueCode = #th
  * text = "นาง คู่สมรส ใจดี"
  * family = "ใจดี"
  * given = "คู่สมรส"
  * prefix = "นาง"
* telecom[0]
  * system = #phone
  * value = "088-8888888"