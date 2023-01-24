Instance: medicationdispense-opd-amoxicillin
InstanceOf: $SD_MedicationDispense_Base
Title: "ตัวอย่าง MedicationDispense: การจ่ายยา Amoxicillin หลังการรับบริการ OPD"
Description: "แสดงการจ่ายยา Amoxicillin หลังการรับบริการ OPD"
Usage: #example
* extension[0]
  * url = $EX_TH_MedicationDispenseDeliveryMode
  * valueCodeableConcept = $CS_43Plus_MedDelivery#1 "รับที่ counter ยา"
* status = #completed
* medicationCodeableConcept
  * coding[0] = $CS_TMT#227162 "AAMOX 500 (ห้างขายยาตราเจ็ดดาว) (amoxicillin 500 mg) film-coated tablet, 1 tablet"
  * coding[+] = $CS_TH_LocalDrugCode#1233 "Local code amoxycillin 500 mg"
  * text = "Amoxycillin 500 mg"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* performer
  * actor = Reference(Practitioner/practitioner-pharmacist1)
    * insert GeneralReference($ID_ThaiPharmacist, "XXXXX", "ภญ. สมบูรณ์ จริงใจ")
* authorizingPrescription = Reference(MedicationRequest/medicationrequest-opd-amoxicillin)
* quantity
  * value = 21
  * unit = "Capsule"
  * system = $SCT
  * code = #732937005
* daysSupply = 7 'd' "Day"
* whenHandedOver = "2022-01-01T12:30:02+07:00"