Instance: medication-opd-amoxicillin
InstanceOf: $SD_Medication_Base
Title: "ตัวอย่าง Medication: ยา Amoxicillin หลังการรับบริการ OPD"
Description: "แสดงยา Amoxicillin หลังการรับบริการ OPD"
Usage: #example
* extension[0]
  * url = $EX_TH_MedicationImageUrl
  * valueUri = "http://example.com/image1.jpg"
* code
  * coding[0] = $CS_TMT#227162 "AAMOX 500 (ห้างขายยาตราเจ็ดดาว) (amoxicillin 500 mg) film-coated tablet, 1 tablet"
  * coding[+] = $CS_TH_LocalDrugCode#1233 "Local code amoxycillin 500 mg"
  * text = "Amoxicillin"
* form = $SCT#732937005 "Capsule"
* amount
  * numerator
    * value = 10
    * unit = "Capsule"
    * system = $SCT
    * code = #732937005
  * denominator
    * value = 1
    * unit = "Sachet"
    * system = $SCT
    * code = #733013000