Instance: patient-ssop
InstanceOf: $SD_Patient_Base
Title: "ตัวอย่าง Patient: SSOP"
Description: "ข้อมูลผู้รับบริการ โดยใช้ข้อมูลจากชุดข้อมูล SSOP"
Usage: #example
* meta.source = "ssop"
* identifier[0]
  * type = $CS_TH_IdentifierType#localHn
  * system = "https://terms.sil-th.org/hcode/5/13814/HN"
  * value = "660002"
* identifier[+]
  * type = $CS_TH_IdentifierType#cid "เลขประจำตัวประชาชนไทย"
  * system = $ID_ThaiCid
  * value = "1330656439244"
* name
  * text = "นายสมบัติ ใจดี"
