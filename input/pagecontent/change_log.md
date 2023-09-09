### ClaimCon STU1 Release 1: เวอร์ชั่น 0.1.2

เวอร์ชั่นนี้เป็นการนำ ClaimCon IG ที่เคยเผยแพร่อยู่เดิมมาจัดเข้าสู่โครงสร้างโฟลเดอร์ใหม่ตามที่ HL7 กำหนด เพื่อให้สามารถใช้ฟีเจอร์ต่าง ๆ ของ IG Publishing tool ได้

- การ redirect ไปยังหน้าต่าง ๆ ของเว็บตามประเภทของ Accept ใน request header
- การเข้าถึงหน้า Version History
- การเข้าถึง IG package จาก FHIR IG registry

ในการนี้ มีความจำเป็นต้องปรับเปลี่ยนเนื้อหาของ IG บางประการ

1. เปลี่ยน canonical URL ของ IG จากเดิม `https://fhir-ig.sil-th.org/claimcon/[content]` เป็น `https://fhir-ig.sil-th.org/th/claimcon/[content]`
2. เนื่องจากเหตุผลเดียวกัน ทำให้ canonical URL ของ terminology resources ต่าง ๆ มีการเปลี่ยนแปลงเช่นกัน เช่น จากเดิม `https://terms.sil-th.org/[resourceType]` จะเปลี่ยนเป็น `https://terms.sil-th.org/core/[resourceType]`
3. การปรับชื่อเรียกของ url ของ child extension ใน address extension ให้เป็นสากลมากขึ้น ได้แก่ จาก "changwat" เป็น "province", "amphur" เป็น "district", และ "tumbol" เป็น "subdistrict"

นอกเหนือจากประเด็นดังกล่าวข้างต้น เนื้อหาส่วนอื่นยังคงเดิม
