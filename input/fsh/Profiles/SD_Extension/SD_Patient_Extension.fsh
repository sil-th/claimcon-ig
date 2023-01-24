// Profile: MophPcPatientExtensionNationality
// Parent: $EX_HL7_Nationality
// Id: mophpc-patient-extension-nationality
// Title: "MoPH-PC Patient Extension: Nationality"
// Description: "สัญชาติของผู้ป่วย"
// * ^url = $SD_Patient_EX_Nationality
// * ^status = #draft
// * ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
// * ^jurisdiction = urn:iso:std:iso:3166#TH
// * ^context.type = #element
// * ^context.expression = "Patient"
// * extension[code].valueCodeableConcept.coding ^slicing.discriminator[0].type = #value
// * extension[code].valueCodeableConcept.coding ^slicing.discriminator[=].path = "system"
// * extension[code].valueCodeableConcept.coding ^slicing.rules = #open
// * extension[code].valueCodeableConcept.coding contains
//   iso3166 0..1 MS and
//   thcc 0..1 MS
// * extension[code].valueCodeableConcept.coding[iso3166] from $VS_INT_ISO3166 (extensible)
// * extension[code].valueCodeableConcept.coding[iso3166].system 1..
// * extension[code].valueCodeableConcept.coding[iso3166].system = $ISO3166 (exactly)
// * extension[code].valueCodeableConcept.coding[iso3166].code 1..
// * extension[code].valueCodeableConcept.coding[thcc] from $VS_THCC_Nationality (extensible)
// * extension[code].valueCodeableConcept.coding[thcc].system 1..
// * extension[code].valueCodeableConcept.coding[thcc].system = $CS_THCC_Nationality (exactly)
// * extension[code].valueCodeableConcept.coding[thcc].code 1..


// Profile: MophPcPatientExtensionReligion
// Parent: $EX_HL7_Religion
// Id: mophpc-patient-extension-religion
// Title: "MoPH-PC Patient Extension: Religion"
// Description: "ความเชื่อทางศาสนาของผู้ป่วย"
// * ^url = $SD_Patient_EX_Religion
// * ^status = #draft
// * ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
// * ^jurisdiction = urn:iso:std:iso:3166#TH
// * ^context.type = #element
// * ^context.expression = "Patient"
// * valueCodeableConcept.coding ^slicing.discriminator[0].type = #value
// * valueCodeableConcept.coding ^slicing.discriminator[=].path = "system"
// * valueCodeableConcept.coding ^slicing.rules = #open
// * valueCodeableConcept.coding contains
//     hl7 0..1 MS and
//     thcc 0..1 MS
// * valueCodeableConcept.coding[hl7] from $VS_HL7_Religion (extensible)
// * valueCodeableConcept.coding[hl7].system 1..
// * valueCodeableConcept.coding[hl7].system = $CS_HL7_Religion (exactly)
// * valueCodeableConcept.coding[hl7].code 1..
// * valueCodeableConcept.coding[thcc] from $VS_THCC_Religion (extensible)
// * valueCodeableConcept.coding[thcc].system 1..
// * valueCodeableConcept.coding[thcc].system = $CS_THCC_Religion (exactly)
// * valueCodeableConcept.coding[thcc].code 1..




// Profile: MophPcPatientExtensionDisability
// Parent: $EX_HL7_Disability
// Id: mophpc-patient-extension-disability
// Title: "MoPH-PC Patient Extension: Disability"
// Description: "ประเภทความพิการ"
// * ^url = $SD_Patient_EX_Disability
// * ^status = #draft
// * ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
// * ^jurisdiction = urn:iso:std:iso:3166#TH
// * ^context.type = #element
// * ^context.expression = "Patient"
// * valueCodeableConcept.coding ^slicing.discriminator[0].type = #value
// * valueCodeableConcept.coding ^slicing.discriminator[=].path = "system"
// * valueCodeableConcept.coding ^slicing.rules = #open
// * valueCodeableConcept.coding contains
//     thcc 0..1 MS
// * valueCodeableConcept.coding[thcc] from $VS_THCC_DisabilityType (extensible)
// * valueCodeableConcept.coding[thcc].system 1..
// * valueCodeableConcept.coding[thcc].system = $CS_THCC_DisabilityType (exactly)
// * valueCodeableConcept.coding[thcc].code 1..