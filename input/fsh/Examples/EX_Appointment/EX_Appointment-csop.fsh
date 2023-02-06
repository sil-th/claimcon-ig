Instance: appointment-csop
InstanceOf: $SD_Appointment_Base
Title: "ตัวอย่าง Appointment"
Description: "ข้อมูลการนัด โดยใช้ข้อมูลจากชุดข้อมูล CSOP"
Usage: #example
* meta.source = "csop"
* status = #booked
* participant
  * actor = Reference(Patient/patient-csop)
  * status = #tentative
* requestedPeriod
  * start = "2023-06-10"