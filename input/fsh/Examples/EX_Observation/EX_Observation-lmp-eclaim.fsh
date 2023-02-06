Instance: observation-lmp-eclaim
InstanceOf: Observation
Title: "ตัวอย่าง Observation: LMP"
Description: "ผลการตรวจ Last Menstrual Period (LMP) โดยใช้ข้อมูลจากชุดข้อมูล e-Claim"
Usage: #example
* meta.source = "eclaim"
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "ผลการตรวจร่างกาย"
* code
  * coding[0] = $LNC#8665-2 "Last menstrual period start date"
  * coding[+] = $SCT#21840007 "Date of last menstrual period"
  * text = "วันแรกของการมีประจำเดือนครั้งสุดท้าย"
* subject = Reference(Patient/patient-eclaim)
* encounter = Reference(Encounter/encounter-opd-eclaim)
* effectiveDateTime =  "2021-04-02"
* valueDateTime = "2021-04-02"