Instance: organization-main
InstanceOf: $SD_Organization_Provider
Title: "ตัวอย่าง Organization: สถานพยาบาลหลักที่บันทึกข้อมูล"
Description: "โรงพยาบาลตัวอย่าง แห่งที่ 1"
* identifier[0]
  * use = #official
  * type
    * coding[0] = $CS_TH_IdentifierType#hcode "รหัส HCODE ของกระทรวงสาธารณสุข"
  * system = $ID_Hcode
  * value = "12345"
* name = "โรงพยาบาลตัวอย่าง แห่งที่ 1"

Instance: organization-second
InstanceOf: $SD_Organization_Provider
Title: "ตัวอย่าง Organization: สถานพยาบาลรองที่บันทึกข้อมูล"
Description: "โรงพยาบาลตัวอย่าง แห่งที่ 2"
* identifier[0]
  * use = #official
  * type
    * coding[0] = $CS_TH_IdentifierType#hcode "รหัส HCODE ของกระทรวงสาธารณสุข"
  * system = $ID_Hcode
  * value = "12345"
* name = "โรงพยาบาลตัวอย่าง แห่งที่ 2"

Instance: organization-third
InstanceOf: $SD_Organization_Provider
Title: "ตัวอย่าง Organization: สถานพยาบาลรองที่บันทึกข้อมูล"
Description: "โรงพยาบาลตัวอย่าง แห่งที่ 3 โรงพยาบาลตติยภูมิ"
* identifier[0]
  * use = #official
  * type
    * coding[0] = $CS_TH_IdentifierType#hcode "รหัส HCODE ของกระทรวงสาธารณสุข"
  * system = $ID_Hcode
  * value = "12345"
* name = "โรงพยาบาลตัวอย่าง แห่งที่ 3 โรงพยาบาลตติยภูมิ"

Instance: organization-fourth
InstanceOf: $SD_Organization_Provider
Title: "ตัวอย่าง Organization: สถานพยาบาลรองที่บันทึกข้อมูล"
Description: "โรงพยาบาลตัวอย่าง แห่งที่ 4 สถานพยาบาลปฐมภูมิ"
* identifier[0]
  * use = #official
  * type
    * coding[0] = $CS_TH_IdentifierType#hcode "รหัส HCODE ของกระทรวงสาธารณสุข"
  * system = $ID_Hcode
  * value = "12345"
* name = "โรงพยาบาลตัวอย่าง แห่งที่ 4 สถานพยาบาลปฐมภูมิ"



Instance: organization-ward1
InstanceOf: $SD_Organization_Provider
Title: "ตัวอย่าง Organization: หอผู้ป่วยใน ของโรงพยาบาลตัวอย่าง"
Description: "หอผู้ป่วยใน ของโรงพยาบาลตัวอย่าง"
* identifier[0]
  * use = #official
  * type
    * coding[0] = $CS_TH_IdentifierType#hcode "รหัส HCODE ของกระทรวงสาธารณสุข"
  * system = $ID_Hcode
  * value = "12345"
* identifier[+]
  * use = #official
  * type
    * coding[0] = $CS_TH_IdentifierType#localDep "รหัสประจำแผนก ของหน่วยบริการ"
  * system = $ID_LO_DepCode
  * value = "12345"
* name = "หอผู้ป่วยใน ของโรงพยาบาลตัวอย่าง"
* partOf = Reference(Organization/organization-main)
