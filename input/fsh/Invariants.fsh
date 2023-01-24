// Person Identifier

Invariant: PID-uri
Description: "เลขทะเบียนของบุคคล (PID) ควรมี system URL ในรูปแบบ https://terms.sil-th.org/hcode/5/{XXXXX}/PID หรือ https://terms.sil-th.org/hcode/9/{XXXXX}/PID โดยที่ {XXXXX} คือรหัส HCODE 5 หลัก หรือ 9 หลัก ซึ่งออกโดยกยผ."
Severity: #warning
Expression: "value.matches('^(https://terms.sil-th.org/hcode/5/[0-9]{5}/PID)$') or value.matches('^(https://terms.sil-th.org/hcode/9/[0-9]{9}/PID)$')"

Invariant: PID-length
Description: "เลขทะเบียนของบุคคล ควรมีความยาวระหว่าง 1 ถึง 15 หลัก"
Severity: #warning
Expression: "value.matches('^([0-9]{1,15})$')"

Invariant: ProID-uri
Description: "เลขที่ผู้ให้บริการ (Provider ID) ควรมี system URL ในรูปแบบ https://terms.sil-th.org/hcode/5/{XXXXX}/Provider หรือ https://terms.sil-th.org/hcode/9/{XXXXX}/Provider โดยที่ {XXXXX} คือรหัส HCODE 5 หลัก หรือ 9 หลัก ซึ่งออกโดยกยผ."
Severity: #warning
Expression: "value.matches('^(https://terms.sil-th.org/hcode/5/[0-9]{5}/Provider)$') or value.matches('^(https://terms.sil-th.org/hcode/9/[0-9]{9}/Provider)$')"

Invariant: CID-length
Description: "เลขประจำตัวประชาชน (CID) ควรมีความยาว 13 หลัก"
Severity: #warning
Expression: "value.matches('^([0-9]{13})$')"

Invariant: HN-uri
Description: "เลขประจำตัวผู้ป่วย (HN) ควรมี system URL ในรูปแบบ https://terms.sil-th.org/hcode/5/{XXXXX}/HN หรือ https://terms.sil-th.org/hcode/9/{XXXXX}/HN โดยที่ {XXXXX} คือรหัส HCODE 5 หลัก หรือ 9 หลัก ซึ่งออกโดยกยผ."
Severity: #warning
Expression: "value.matches('^(https://terms.sil-th.org/hcode/5/[0-9]{5}/HN)$') or value.matches('^(https://terms.sil-th.org/hcode/9/[0-9]{9}/HN)$')"

Invariant: Passport-uri
Description: "หมายเลขหนังสือเดินทาง (Passport) ควรมี system URL ในรูปแบบ http://hl7.org/fhir/sid/passport-{XXX} โดยที่ {XXX} คือรหัสประเทศ 3 หลักซึ่งออกโดย ISO 3166"
Severity: #warning
Expression: "value.matches('^(http://hl7.org/fhir/sid/passport-[A-Z]{3})$')"

// Organization Identifier

Invariant: hcode-length
Description: "รหัสสถานบริการ (HCODE) ควรเป็นรหัส 5 หลัก หรือ 9 หลัก"
Severity: #warning
Expression: "value.matches('^([0-9]{5})$') or value.matches('^([0-9]{9})$')"


// Local activity identifier
Invariant: VN-uri
Description: "หมายเลขการรับบริการ (VN) ควรมี system URL ในรูปแบบ https://terms.sil-th.org/hcode/5/{XXXXX}/VN หรือ https://terms.sil-th.org/hcode/9/{XXXXX}/VN โดยที่ {XXXXX} คือรหัส HCODE 5 หลัก หรือ 9 หลัก ซึ่งออกโดยกยผ."
Severity: #warning
Expression: "value.matches('^(https://terms.sil-th.org/hcode/5/[0-9]{5}/VN)$') or value.matches('^(https://terms.sil-th.org/hcode/9/[0-9]{9}/VN)$')"

Invariant: AN-uri
Description: "หมายเลขผู้ป่วยใน (AN) ควรมี system URL ในรูปแบบ https://terms.sil-th.org/hcode/5/{XXXXX}/AN หรือ https://terms.sil-th.org/hcode/9/{XXXXX}/AN โดยที่ {XXXXX} คือรหัส HCODE 5 หลัก หรือ 9 หลัก ซึ่งออกโดยกยผ."
Severity: #warning
Expression: "value.matches('^(https://terms.sil-th.org/hcode/5/[0-9]{5}/AN)$') or value.matches('^(https://terms.sil-th.org/hcode/5/[0-9]{9}/AN)$')"


Invariant: Inv-uri
Description: "เลขที่อ้างอิงใบแจ้งหนี้ของหน่วยบริการ (Inv) ควรมี system URL ในรูปแบบ https://terms.sil-th.org/hcode/5/{XXXXX}/Inv หรือ https://terms.sil-th.org/hcode/9/{XXXXX}/Inv โดยที่ {XXXXX} คือรหัส HCODE 5 หลัก หรือ 9 หลัก ซึ่งออกโดยกยผ."
Severity: #warning
Expression: "value.matches('^(https://terms.sil-th.org/hcode/5/[0-9]{5}/Inv)$') or value.matches('^(https://terms.sil-th.org/hcode/5/[0-9]{9}/Inv)$')"

Invariant: InvLt-uri
Description: "เลขที่อ้างอิงชุดข้อมูลใบแจ้งหนี้ ของหน่วยบริการ (InvLt) ควรมี system URL ในรูปแบบ https://terms.sil-th.org/hcode/5/{XXXXX}/InvLt หรือ https://terms.sil-th.org/hcode/9/{XXXXX}/InvLt โดยที่ {XXXXX} คือรหัส HCODE 5 หลัก หรือ 9 หลัก ซึ่งออกโดยกยผ."
Severity: #warning
Expression: "value.matches('^(https://terms.sil-th.org/hcode/5/[0-9]{5}/InvLt)$') or value.matches('^(https://terms.sil-th.org/hcode/5/[0-9]{9}/InvLt)$')"


Invariant: local-device-uri
Description: "หมายเลขอุปกรณ์ที่สถานพยาบาลกำหนด ควรมี system URL ในรูปแบบ https://terms.sil-th.org/hcode/5/{XXXXX}/Device หรือ https://terms.sil-th.org/hcode/9/{XXXXX}/Device โดยที่ {XXXXX} คือรหัส HCODE 5 หลัก หรือ 9 หลัก ซึ่งออกโดยกยผ."
Severity: #warning
Expression: "value.matches('^(https://terms.sil-th.org/hcode/5/[0-9]{5}/Device)$') or value.matches('^(https://terms.sil-th.org/hcode/5/[0-9]{9}/Device)$')"



// Refer
Invariant: LocalRefer-uri
Description: "เลขที่การส่งต่อผู้ป่วย ควรมี system URL ในรูปแบบ https://terms.sil-th.org/hcode/5/{XXXXX}/Refer หรือ https://terms.sil-th.org/hcode/9/{XXXXX}/Refer โดยที่ {XXXXX} คือรหัส HCODE 5 หลัก หรือ 9 หลัก ซึ่งออกโดยกยผ."
Severity: #warning
Expression: "value.matches('^(https://terms.sil-th.org/hcode/5/[0-9]{5}/Refer)$') or value.matches('^(https://terms.sil-th.org/hcode/9/[0-9]{9}/Refer)$')"


Invariant: ProvincialRefer-uri
Description: "เลขที่การส่งต่อผู้ป่วยกลางของจังหวัด ควรมี system URL ในรูปแบบ https://terms.sil-th.org/[XX]/Refer, โดยที่ [XX] คือรหัสจังหวัด 2 หลักของกรมการปกครอง"
Severity: #warning
Expression: "value.matches('^(https://terms.sil-th.org/[0-9]{2}/Refer)$')"


Invariant: LocalReferDocument-uri
Description: "เลขเอกสารการส่งตัว ควรมี system URL ในรูปแบบ https://terms.sil-th.org/hcode/5/{XXXXX}/ReferDoc หรือ https://terms.sil-th.org/hcode/9/{XXXXX}/ReferDoc  โดยที่ {XXXXX} คือรหัส HCODE 5 หลัก หรือ 9 หลัก ซึ่งออกโดยกยผ."
Severity: #warning
Expression: "value.matches('^(https://terms.sil-th.org/hcode/5/[0-9]{5}/ReferDoc)$') or value.matches('^(https://terms.sil-th.org/hcode/9/[0-9]{9}/ReferDoc)$')"


// Location identifier
Invariant: HID-uri
Description: "รหัสบ้านที่กำหนดโดยโปรแกรม (HID) ควรมี system URL ในรูปแบบ https://terms.sil-th.org/hcode/5/{XXXXX}/HouseId หรือ https://terms.sil-th.org/hcode/9/{XXXXX}/HouseId  โดยที่ {XXXXX} คือรหัส HCODE 5 หลัก หรือ 9 หลัก ซึ่งออกโดยกยผ."
Severity: #warning
Expression: "value.matches('^(https://terms.sil-th.org/hcode/5/[0-9]{5}/HouseId)$') or value.matches('^(https://terms.sil-th.org/hcode/5/[0-9]{9}/HouseId)$')"


//Department
Invariant: DEP-uri
Description: "รหัสหน่วยงานในสถานพยาบาล ควรมี system URL ในรูปแบบ https://terms.sil-th.org/hcode/5/{XXXXX}/DepCode หรือ https://terms.sil-th.org/hcode/9/{XXXXX}/DepCode  โดยที่ {XXXXX} คือรหัส HCODE 5 หลัก หรือ 9 หลัก ซึ่งออกโดยกยผ."
Severity: #warning
Expression: "value.matches('^(https://terms.sil-th.org/hcode/5/[0-9]{5}/DepCode)$') or value.matches('^(https://terms.sil-th.org/hcode/5/[0-9]{9}/DepCode)$')"