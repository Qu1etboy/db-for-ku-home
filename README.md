# DB for KU home

รายละเอียดงานดูที่ [notion](https://qu1etboy.notion.site/Database-Project-d6122872fe4f49c48fbf880d259d2cb3)
ข้อมูล data dictionary ให้ดูที่ [google docs](https://docs.google.com/document/d/1_YznivsezInbEn6D2ZlctefKYy1EYzT1J0xu0eWp374/edit?usp=sharing)

## TODO

- [ ] สร้างตารางความสัมพันธ์
- [ ] insert ข้อมูลตัวอย่าง
- Select user interested queries
  - รายได้ในเดือนนั้น
  - จำนวนผู้ใช้ห้อง... ในเดือนนั้น
  - แสดงข้อมูลรหัสนิสิต, ชื่อ และสาขา ที่เข้าใช้ในปีที่ผ่านมา
  - จำนวนผู้ใช้ที่ลงทะเบียนเป็นสมาชิกในเว็บไซต์
  - แสดงเงินเดือนของพนังงานทั้งหมดรวมกัน
  - แสดงชื่อ, เบอร์โทร และอีเมลของ ตำแหน่งผู้บริหารทั้งหมด
  - จำนวนวันเข้าพักที่สูงสุด
  - จำนวนพนักงานที่ อยู่ในตำแหน่งแม่บ้าน
  - แสดงรีวิวที่ rating 1 ดาว และ comment
  - แสดงจำนวนห้องที่ว่างและที่ไม่ว่างทั้งหมด
  - ราคาห้องพักที่ยังเหลือมีราคาเท่าไหร่บ้าง
  - แสดงจำนวนห้องว่างตอนนี้
  - แสดงตัวอย่างรูปของแต่ละห้องพักและราคา
  - แสดงรีวิวห้องพัก…
  - ห้องพักที่นักศึกษาใช้บริการมากสุด
  - ประเภทห้องพักที่ได้คะแนนรีวิวมากสุด
  - แสดงราคาและภาษีของแต่ละห้องพัก
  - แสดงข้อมูลทั้งหมดที่โรงแรมต้องการเก็บจากผู้ใช้
  - แสดงห้องพักที่และ comment ที่มี rating 5 ดาว
  - แสดงชื่อ เบอร์ติดต่อและอีเมลของพนักงานตำแหน่งบริการของโรงแรม
  - แสดงบริการที่จะได้รับจากการจองห้องพักแต่ละรูปแบบ

## How to contribute

วิธีส่งโค้ดให้ทําตามนี้

1. fork repository นี้
2. clone fork repository แล้วทําการเพิ่มหรือแก้ไขโค้ด
3. push ขึ้นมาที่ remote repository ของเราที่ทําการ fork มา

```bash
git push origin main
```

4. เปิด pull request แล้ว pull เข้ามาที่ repository หลักนี้
5. ถ้าไม่มี merge conflict ก็สามารถกด merge เข้ามาที่ main branch ของ repository นี้ได้เลย

เมื่อ repository นี้มีการอัพเดตสามารถ pull เข้ามายัง fork repository ของเราได้โดย

- กําหนด remote repository ชื่อ upstream

```bash
git remote add upstream <url>
```

- ดึงโค้ดจาก original remote repository ลงมายัง local repository โดยใช้คําสั่ง

```bash
git pull upstream main
```

อ่านศึกษาเพิ่มเติมได้ที่

- [Fork a repo](https://docs.github.com/en/get-started/quickstart/fork-a-repo)
- [Pull new updates from original GitHub repository into forked GitHub repository](https://stackoverflow.com/questions/3903817/pull-new-updates-from-original-github-repository-into-forked-github-repository)

## Folder structure

ไฟล์ `test.sql` มีไว้เพื่อให้ github แสดงตัว folder ไม่งั่นมันจะไม่แสดง

```
db-for-ku-home/
├── docs/ (รวมคําสั่ง SQL ที่จําเป็นของ borntodev)
│   ├── SQL_Cheat_Sheet-1-0-2.pdf
├── create/ (รวมคําสัั่งในการสร้าง table)
├── insert/ (รวมคําสั่งในการ insert ข้อมูล)
├── select/ (รวมคําสั่ง select user interested queries)
```
