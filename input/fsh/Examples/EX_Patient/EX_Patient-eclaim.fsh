Instance: patient-eclaim
InstanceOf: $SD_Patient_Base
Title: "ตัวอย่าง Patient: e-Claim"
Description: "ข้อมูลผู้รับบริการ โดยใช้ข้อมูลจากชุดข้อมูล e-Claim"
Usage: #example
* meta.source = "eclaim"
* extension[0]
  * url = $EX_TH_Patient_Nationality
  * extension
    * url = "code"
    * valueCodeableConcept = $CS_THCC_Nationality#099
* identifier[0]
  * type = $CS_TH_IdentifierType#localHn
  * system = "https://terms.sil-th.org/hcode/5/13814/HN"
  * value = "660005"
* identifier[+]
  * type = $CS_TH_IdentifierType#cid "เลขประจำตัวประชาชนไทย"
  * system = $ID_ThaiCid
  * value = "1604802401857"
* name
  * text = "นาย สมหวัง ใจดี"
  * family = "ใจดี"
  * given = "สมหวัง"
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
  * district = "ปทุมวัน"
  * state = "กรุงเทพมหานคร"
* maritalStatus
  * coding[0] = $CS_HL7_MaritalStatus#M "Married"
  * coding[+] = CS_THCC_Marital#2 "คู่"