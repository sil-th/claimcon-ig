Instance: patient-ssi
InstanceOf: $SD_Patient_Base
Title: "ตัวอย่าง Patient: SSI"
Description: "ข้อมูลผู้รับบริการ โดยใช้ข้อมูลจากชุดข้อมูล SSI"
Usage: #example
* meta.source = "ssi"
* extension[0]
  * url = $EX_TH_Patient_Nationality
  * extension
    * url = "code"
    * valueCodeableConcept = $CS_THCC_Nationality#099
* identifier[0]
  * type = $CS_TH_IdentifierType#localHn
  * system = "https://terms.sil-th.org/hcode/5/13814/HN"
  * value = "660004"
* identifier[+]
  * type = $CS_TH_IdentifierType#cid "เลขประจำตัวประชาชนไทย"
  * system = $ID_ThaiCid
  * value = "1865452906549"
* name
  * text = "นายสมพงษ์ ใจดี"
  * prefix = "นาย"
* gender = #male
* birthDate = "1988-05-21"
* address
  * extension
    * url = $EX_TH_AddressDopaCode
    * extension[0]
      * url = "province"
      * valueCodeableConcept = $CS_DOPA_Location#10
    * extension[+]
      * url = "district"
      * valueCodeableConcept = $CS_DOPA_Location#1007
* maritalStatus
  * coding[0] = $CS_HL7_MaritalStatus#M "Married"
  * coding[+] = $CS_CHI_Marital#2 "คู่"