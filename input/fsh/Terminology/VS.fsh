// ValueSet: VS_TMLT_eClaim_LabFU
// Id: vs-tmlt-eclaim-labfu
// Title: "รหัสการตรวจทางห้องปฏิบัติการ TMLT ที่ใช้ในแฟ้ม LABFU (e-Claim)"
// Description: "รหัสการตรวจทางห้องปฏิบัติการ TMTL ที่ใช้ในแฟ้ม LABFU (e-Claim)"
// * ^url = $VS_TMLT_eClaim_LabFU
// * ^meta.profile = $SD_SharableVS
// * ^experimental = false
// * $CS_TMLT#320281 "Fasting glucose [mg/dL] in Venous blood"
// * $CS_TMLT#320062 "Glucose [mg/dL] in Serum or Plasma"
// * $CS_TMLT#320280 "Fasting glucose [mg/dL] in Capillary blood"
// * $CS_TMLT#320064 "Glucose [mg/dL] in Capillary blood"
// * $CS_TMLT#320131 "Hemoglobin A1c/Hemoglobin.total [%] in Blood"
// * $CS_TMLT#320072 "Triglyceride [mg/dL] in Serum or Plasma"
// * $CS_TMLT#320070 "Cholesterol [mg/dL] in Serum or Plasma"
// * $CS_TMLT#320071 "Cholesterol in HDL [mg/dL] in Serum or Plasma"
// * $CS_TMLT#320073 "Cholesterol in LDL [mg/dL] in Serum or Plasma by Direct assay"
// * $CS_TMLT#320052 "Urea nitrogen [mg/dL] in Serum or Plasma"
// * $CS_TMLT#320123 "Creatine kinase [U/L] in Serum or Plasma"
// * $CS_TMLT#320269 "Microalbumin [mg/dL] in Urine by Test strip"
// * $CS_TMLT#320057 "Creatinine [mg/dL] in Urine"
// * $CS_TMLT#310001 "Albumin [+/-] in Urine by Test strip"
// * $CS_TMLT#390001 "Glomerular filtration rate/1.73 sq M.predicted [mL/min/1.73 sq M] in Serum, Plasma or Blood by Creatinine-based formula (CKD-EPI)"
// * $CS_TMLT#300089 "Hemoglobin [g/dL] in Blood"
// * $CS_TMLT#320483 "Protein/Creatinine [mg/gm cr] in Urine"
// * $CS_TMLT#320026 "Potassium [mmol/L] in Serum or Plasma"
// * $CS_TMLT#320489 "Bicarbonate [mmol/L] in Venous blood"
// * $CS_TMLT#320022 "Phosphate [mg/dL] in Serum or Plasma"
// * $CS_TMLT#320216 "Parathyrin.intact [pg/mL] in Serum or Plasma"


// ValueSet: VS_ClaimCon_ObsCode
// Id: vs-claimcon-obscode
// Title: "รหัสการตรวจที่มีใช้ใน claim dataset"
// Description: "รหัสการตรวจที่มีใช้ใน claim dataset"
// * ^url = $VS_ClaimCon_ObsCode
// * ^meta.profile = $SD_SharableVS
// * ^experimental = false
// * $LNC#11341-5 "History of Occupation"
// * $LNC#8310-5 "Body temperature"
// * $SCT#386725007 "Body temperature"
// * $LNC#8480-6 "Systolic blood pressure"
// * $SCT#271649006 "Systolic blood pressure"
// * $LNC#8462-4 "Diastolic blood pressure"
// * $SCT#271650006 "Diastolic blood pressure"
// * $LNC#8867-4 "Heart rate"
// * $SCT#364075005 "Heart rate"
// * $LNC#9279-1 "Respiratory rate"
// * $SCT#86290005 "Respiratory rate"
// * $LNC#29463-7 "Body weight"
// * $SCT#27113001 "Body weight"
// * $SCT#871562009 "Detection of SARS-CoV-2"
// * $LNC#96761-2 "Total score Barthel Index"
// * $SCT#273302005 "Barthel index"
// * $LNC#11996-6 "[#] Pregnancies"
// * $SCT#161732006 "Gravida"
// * $LNC#57714-8 "Obstetric estimation of gestational age"
// * $SCT#57036006 "Fetal gestational age"
// * $CS_TMLT#300058 "Hemoglobin E [+/-] in Blood by DCIP"
// * $LNC#8665-2 "Last menstrual period start date"
// * $SCT#21840007 "Date of last menstrual period"


// Dep Code
// 702877000 | Internal medicine clinic
// 90484001 | Hospital-based outpatient general surgery clinic
// 56189001 | Hospital-based outpatient obstetrical clinic
// 22549003 | Hospital-based outpatient gynecology clinic
// 3729002 | Hospital-based outpatient pediatric clinic
// 78088001 | Hospital-based outpatient ophthalmology clinic
// 78001009 | Hospital-based outpatient orthopedics clinic
// 14866005 | Hospital-based outpatient mental health clinic
// 79491001 | Hospital-based radiology facility
// 10206005 | Hospital-based outpatient dental clinic
// 37546005 | Hospital-based outpatient rehabilitation clinic
// 31628002 | Hospital-based outpatient family medicine clinic
// 36293008 | Hospital-based outpatient pain clinic
// 394777002 | Health encounter sites
// 702877000 | Internal medicine clinic
// 702860000 | General surgery clinic
// 702862008 | Gynecology clinic
// 702900003 | Pediatric clinic
// 702852001 | Ear, nose and throat clinic
// 702894003 | Ophthalmology clinic
// 702882007 | Mental health clinic
// 702846002 | Dental clinic
// 702916001 | Rehabilitation clinic
// 441480003 | Primary care department
// 394761003 | General practitioner practice site
// 702855004 | Family medicine clinic
// 702897005 | Pain clinic
// 702891006 | Neurosurgery clinic 
// 702893009 | Occupational therapy clinic
// 394777002 | Health encounter sites
// 309912009 | Medical department
// 309967005 | Surgical department
// 309944008 | Obstetrics department
// 309943002 | Gynecology department
// 309945009 | Pediatric department
// 309978002 | Ear, nose and throat department
// 309988001 | Ophthalmology department
// 225728007 | Accident and Emergency department
// 309940004 | Rehabilitation department
// 441480003 | Primary care department
// 394761003 | General practitioner practice site
// 309965002 | Occupational health department
// 33022008 | Hospital-based outpatient department
// 440654001 | Inpatient environment 