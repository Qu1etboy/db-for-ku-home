# DB for KU home

รายละเอียดงานดูที่ [notion](https://qu1etboy.notion.site/Database-Project-d6122872fe4f49c48fbf880d259d2cb3)
ข้อมูล data dictionary ให้ดูที่ [google docs](https://docs.google.com/document/d/1_YznivsezInbEn6D2ZlctefKYy1EYzT1J0xu0eWp374/edit?usp=sharing)

## TODO

- สร้างตารางความสัมพันธ์
  - [ ] user
  - [ ] employee
  - [x] role
  - [ ] room
  - [ ] room type
  - [x] booking
  - [x] bill
  - [ ] review
- insert ข้อมูลตัวอย่าง
  - [ ] user
  - [ ] employee
  - [x] role
  - [ ] room
  - [x] room type
  - [ ] booking
  - [ ] bill
  - [ ] review
- Select user interested queries

  - [ ] แสดงข้อมูลของรายได้ที่ได้ในเดือนๆ หนึ่งจากการรวมราคาห้องทั้งหมดจากการรวมตาราง bill, ตาราง booking และ ตาราง room เข้าด้วยกัน
  - [ ] แสดงจํานวนผู้ใช้โรงแรมทั้งหมดในเดือนๆ หนึ่งจากตาราง booking
  - [ ] แสดงข้อมูลชื่อ เบอร์โทร ของผู้ใช้ที่เข้าใช้ในปีที่ผ่านมาจากตาราง user
  - [ ] แสดงข้อมูลของผู้ใช้ที่สมัครเป็นสมาชิกจากตาราง user (email ไม่เป็น null)
  - [ ] แสดงข้อมูลเงินเดือนของพนักงานทั้งหมดรวมกันจากตาราง employee
  - [ ] แสดงชื่อ เบอร์โทร และอีเมลของตําแหน่งผู้บริหารทั้งหมดจากตาราง employee
  - [ ] แสดงข้อมูลการเข้าพักโรงแรมที่เข้าพักนานที่สุดจากตาราง booking
  - [ ] แสดงจํานวนพนักงานที่อยู๋ในตําแหน่งแม่บ้าน จากตาราง employee
  - [ ] แสดงรีวิวที่ได้ rating 1 ดาว และ comment มาจากตาราง review
  - [ ] แสดงจํานวนห้องทั้งหมดจากตาราง room

  - [ ] แสดงจํานวนห้องที่ว่างทั้งหมด พร้อมราคามาจากตาราง room
  - [ ] แสดงตัวอย่างรูปของแต่ละห้องพักและราคาของห้องพักแต่ละประเภททั้งหมดมาจากตาราง room_type
  - [ ] แสดงรีวิวของห้องพักทั้งหมดจากตารางรีวิว
  - [ ] แสดงประเภทของห้องพักที่ผู้ใช้เป็นสมาชิกของทางโรงแรมและเป็นนิสิตนักศึกษาเข้าใช้มากที่สุดจากตาราง booking
  - [ ] แสดงประเภทของห้องพักที่ได้รับคะแนนรีวิวสูงที่สุดพร้อม comment จากตาราง review
  - [ ] แสดงข้อมูลของผู้ใช้คนหนึ่งจากตาราง user โดยใช้ id_card ในการหา
  - [ ] แสดงประวัติการจองห้องของผู้ใช้คนหนึ่งจากตาราง booking โดยใช้ id_card ในการหา
  - [ ] แสดงชื่อ,เบอร์ติดต่อและอีเมลของพนักงานตำแหน่งบริการของโรงแรมจากตาราง employee
  - [ ] แสดงข้อมูลของประเภทห้องแต่ละแบบจากตาราง room_type

ใครทําเสร็จแล้วให้ติ้กด้วยนะว่าทําอันไหนไป เช่น

```md
- [x] ทําแล้ว
- [ ] ยังไม่ทํา
```

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
git remote add upstream https://github.com/Qu1etboy/db-for-ku-home.git
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
