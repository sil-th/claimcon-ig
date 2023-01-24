Instance: medicationstatement-selfmed
InstanceOf: $SD_MedicationStatement_Base
Title: "ตัวอย่าง MedicationStatement: ยาที่ผู้ป่วยซื้อรับประทานเอง"
Description: "แสดงประวัติยาที่ผู้ป่วยซื้อรับประทานเอง"
Usage: #example
* identifier[0]
  * type = $CS_TH_IdentifierType#localSelfMed "รหัสระบุยาที่ผู้รับบริการจัดหาเอง ซึ่งออกโดยหน่วยบริการ"
  * system = $ID_LO_SelfDrug
  * value = "XXXXXX"
* status = #completed
* medicationCodeableConcept
  * coding[0] = $CS_TMT#227162 "AAMOX 500 (ห้างขายยาตราเจ็ดดาว) (amoxicillin 500 mg) film-coated tablet, 1 tablet"
  * coding[+] = $CS_TH_LocalDrugCode#1233 "Local code amoxycillin 500 mg"
  * text = "Amoxycillin 500 mg"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectivePeriod
  * start = "2021-03-24"
  * end = "2021-03-31"
* dateAsserted = "2021-03-31T12:30:02+07:00"
* informationSource = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* dosage
  * text = "1 tablet three times per day"
  * timing 
    * repeat
      * frequency = 1
      * period = 1
      * periodUnit = #d
  * route = $SCT#260548002 "Oral"
  * doseAndRate
    * doseQuantity
      * value = 1
      * unit = "Tab"
      * system = $CS_HL7_DoseForm
      * code = #TAB
  
