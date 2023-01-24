Instance: practitionerrole-doctor1
InstanceOf: $SD_PractitionerRole_Base
Title: "ตัวอย่าง PractitionerRole: บทบาทแพทย์ รายที่ 1"
Description: "บทบาทแพทย์ รายที่ 1 ในสถานพยาบาลหลัก"
Usage: #example
* extension[0]
  * url = $EX_TH_PractitionerRoleProviderMovement
  * extension[0]
    * url = "movefrom"
    * valueReference = Reference(Organization/organization-second) "โรงพยาบาลสำรอง"
  * extension[+]
    * url = "period"
    * valuePeriod
      * start = "2012-04-25"
      * end = "2015-01-01"
  * extension[+]
    * url = "moveto"
    * valueReference = Reference(Organization/organization-main) "โรงพยาบาลตัวอย่าง"
* identifier[0]
  * use = #secondary
  * type
    * coding[0] = $CS_HL7_IdentifierType#PN "Person number"
    * coding[+] = $CS_TH_IdentifierType#localProv "รหัสผู้ให้บริการสุขภาพ ของหน่วยบริการ"
  * system = $ID_LO_Provider
  * value = "XXXXXXXX"
  * period
    * start = "2018-04-25"
* active = true
* period
  * start = "2015-01-01"
  * end = "2028-03-31"
* practitioner = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"
* organization = Reference(Organization/organization-main) "โรงพยาบาลตัวอย่าง"
* code = $CS_THCC_IndividualProviderType#01 "แพทย์"
* telecom[0]
  * system = #phone
  * value = "088-8888888"
  * use = #work
* telecom[+]
  * system = #email
  * value = "sonyingjingjai@jingjai.com"