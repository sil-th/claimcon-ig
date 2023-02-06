Instance: appointment-ssop
InstanceOf: $SD_Appointment_Base
Title: "ตัวอย่าง Appointment"
Description: "ข้อมูลการนัด โดยใช้ข้อมูลจากชุดข้อมูล SSOP"
Usage: #example
* meta.source = "ssop"
* status = #booked
* participant
  * actor = Reference(Patient/patient-ssop)
  * status = #tentative
* requestedPeriod
  * start = "2023-06-10"