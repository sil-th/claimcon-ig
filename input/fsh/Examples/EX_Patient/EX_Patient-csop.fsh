Instance: patient-csop
InstanceOf: $SD_Patient_Base
Title: "ตัวอย่าง Patient: CSOP"
Description: "ข้อมูลผู้รับบริการ โดยใช้ข้อมูลจากชุดข้อมูล CSOP"
Usage: #example
* meta.source = "csop"
* identifier[0]
  * type = $CS_TH_IdentifierType#localHn
  * system = "https://terms.sil-th.org/hcode/5/13814/HN"
  * value = "660001"
* identifier[+]
  * type = $CS_TH_IdentifierType#cid "เลขประจำตัวประชาชนไทย"
  * system = $ID_ThaiCid
  * value = "1471445676574"
* name
  * text = "นายสมบัติ ใจดี"
