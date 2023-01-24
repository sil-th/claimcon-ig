// Profile: MophPcPractitionerRoleBase
// Parent: PractitionerRole
// Id: mophpc-practitionerrole-base
// Title: "MoPH-PC PractitionerRole"
// Description: "บทบาทในการปฏิบัติงานของผู้ให้บริการสุขภาพ"
// * ^url = $SD_PractitionerRole_Base
// * ^status = #draft
// * ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
// * ^jurisdiction = urn:iso:std:iso:3166#TH
// * extension contains
//   $EX_TH_PractitionerRoleProviderMovement named movement 0..* MS
// * identifier MS
// * period MS
// * period.start MS
// * period.start ^short = "วันที่เริ่มปฏิบัติงานในบทบาทนี้"
// * period.end MS
// * period.end ^short = "วันที่สิ้นสุดการปฏิบัติงานในบทบาทนี้"
// * practitioner only Reference($SD_Practitioner_Base)
// * practitioner 1.. MS
// * organization only Reference($SD_Organization_Provider)
// * organization 1.. MS
// * code MS
// * code ^short = "รหัสประเภทบุคลากร"
// * code.coding ^slicing.discriminator[0].type = #value
// * code.coding ^slicing.discriminator[=].path = "system"
// * code.coding ^slicing.rules = #open
// * code.coding contains
//     thcc 0..1 MS
// * code.coding[thcc] ^short = "รหัสประเภทบุคลากร"
// * code.coding[thcc] from $VS_THCC_IndividualProviderType (extensible)
// * code.coding[thcc].system = $CS_THCC_IndividualProviderType (exactly)
