Instance: organization-nhso
InstanceOf: Organization
Title: "ตัวอย่าง Organization: สำนักงานหลักประกันสุขภาพแห่งชาติ (สปสช.)"
Description: "สำนักงานหลักประกันสุขภาพแห่งชาติ (สปสช.)"
* active = true
* type = $CS_HL7_OrgType#pay "Payer"
* name = "สำนักงานหลักประกันสุขภาพแห่งชาติ (สปสช.)"
* telecom[0]
  * system = #phone
  * value = "1330"
* telecom[+]
  * system = #phone
  * value = "021414000"
* telecom[+]
  * system = #fax
  * value = "021439730-1"
* telecom[+]
  * system = #url
  * value = "https://www.nhso.go.th"
* address
  * text = "เลขที่ 120 หมู่ 3 ชั้น 2-4 อาคารรวมหน่วยงานราชการ (อาคาร B) ศูนย์ราชการเฉลิมพระเกียรติ 80 พรรษา 5 ธันวาคม 2550 ถนนแจ้งวัฒนะ แขวงทุ่งสองห้อง เขตหลักสี่ กรุงเทพมหานคร ฯ 10210"
  * line = "เลขที่ 120 หมู่ 3 ชั้น 2-4 อาคารรวมหน่วยงานราชการ (อาคาร B) ศูนย์ราชการเฉลิมพระเกียรติ 80 พรรษา 5 ธันวาคม 2550 ถนนแจ้งวัฒนะ"
  * city = "ทุ่งสองห้อง"
  * district = "หลักสี่"
  * state = "กรุงเทพมหานคร"
  * postalCode = "10210"
  * country = "TH"


Instance: organization-sso
InstanceOf: Organization
Title: "ตัวอย่าง Organization: สำนักงานประกันสังคม (สปส.) กระทรวงแรงงาน"
Description: "สำนักงานประกันสังคม (สปส.) กระทรวงแรงงาน"
Usage: #example
* active = true
* type = $CS_HL7_OrgType#pay "Payer"
* name = "สำนักงานประกันสังคม (สปส.) กระทรวงแรงงาน"
* telecom[0]
  * system = #phone
  * value = "1506"
* telecom[+]
  * system = #phone
  * value = "029562345"
* telecom[+]
  * system = #fax
  * value = "025260658"
* telecom[+]
  * system = #url
  * value = "https://www.sso.go.th"
* telecom[+]
  * system = #email
  * value = "info@sso1506.com"
* address
  * text = "เลขที่ 88/28 หมู่ 4 ถนนติวานนท์ ตำบลตลาดขวัญ อำเภอเมือง จังหวัดนนทบุรี รหัสไปรษณีย์ 11000"
  * line = "เลขที่ 88/28 หมู่ 4 ถนนติวานนท์"
  * city = "ตลาดขวัญ"
  * district = "เมืองนนทบุรี"
  * state = "นนทบุรี"
  * postalCode = "11000"
  * country = "TH"