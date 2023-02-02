Profile: ClaimConMedicationDispenseBase
Parent: MedicationDispense
Id: claimcon-medicationdispense-base
Title: "ClaimCon MedicationDispense"
Description: "การจ่ายยา"
* ^url = $SD_MedicationDispense_Base
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension contains
  $EX_CHI_ProductCat named productCat 0..1 MS and
  $EX_CHI_PackSize named packSize 0..1 MS and
  $EX_TH_MedicationRequestNedCriteria named nedCriteria 0..1 MS and
  $EX_TH_MedicationRequestApprovedNo named approveNo 0..1 MS
* status MS
* category MS
* category from $VS_eClaim_MedicationCategory (extensible)
* medication[x] 1.. MS
* medication[x] only CodeableConcept
* medicationCodeableConcept MS
* medicationCodeableConcept.coding ^slicing.discriminator.type = #value
* medicationCodeableConcept.coding ^slicing.discriminator.path = "system"
* medicationCodeableConcept.coding ^slicing.rules = #open
* medicationCodeableConcept.coding contains
    tmt 0..1 MS and
    24drug 0..1 MS and
    local 0..1 MS
* medicationCodeableConcept.coding[tmt] ^short = "รหัสยามาตรฐาน TMT"
* medicationCodeableConcept.coding[tmt] from $VS_TMT (extensible)
* medicationCodeableConcept.coding[24drug] ^short = "รหัสยามาตรฐาน 24 หลัก"
* medicationCodeableConcept.coding[24drug] from $VS_24Drug (extensible)
* medicationCodeableConcept.coding[local] ^short = "รหัสยาของสถานพยาบาล"
* medicationCodeableConcept.coding[local].system 1..
* medicationCodeableConcept.coding[local].system = $CS_TH_LocalDrugCode (exactly)
* subject only Reference($SD_Patient_Base)
* subject MS
* context only Reference($SD_Encounter_Opd or $SD_Encounter_Ipd)
* context MS
* performer MS
* performer.actor MS
* performer.actor ^short = "เภสัชกรที่จ่ายยา"
* authorizingPrescription only Reference($SD_MedicationRequest_Base)
* authorizingPrescription MS
* quantity MS
* daysSupply MS
* whenHandedOver MS
* dosageInstruction
  * extension contains
    $EX_TH_MedicationRequestDosageCode named sigCode 0..1 MS
  * text MS
* substitution
  * wasSubstituted MS
  * type MS
  * type from $VS_CHI_SubstitutionCode (extensible)