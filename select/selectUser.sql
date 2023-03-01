/*แสดงข้อมูลชื่อ เบอร์โทร ของผู้ใช้ที่เข้าใช้ทั้งหมดจากตาราง user (เปลี่ยนโจทย์)*/
SELECT * FROM User;

/*แสดงข้อมูลของผู้ใช้ที่สมัครเป็นสมาชิกจากตาราง user (is_ku_member ไม่เป็น null)*/
SELECT id_card,phone_number,concat(first_name,' ',last_name),email,is_ku_member
FROM user
WHERE is_ku_member IS NOT NULL;

/*แสดงข้อมูลของผู้ใช้คนหนึ่งจากตาราง user โดยใช้ id_card ในการหา*/
SELECT * FROM User 
Where id_card='6410406878000';

/*แสดงข้อมูลของผู้ใช้คนหนึ่งจากตาราง user โดยใช้ id_card แค่เลขบัตรสี่ตัวสุดท้ายในการหา*/
SELECT * FROM User 
Where SUBSTR(id_card,10) = '8000';

/*แสดงข้อมูลของผู้ใช้คนหนึ่งจากตาราง user โดยใช้ id_card เลขบัตรสองตัวแรกในการหา*/
SELECT id_card, SUBSTR(id_card,1,2), phone_number,concat(first_name,' ',last_name),email,is_ku_member
FROM user
WHERE SUBSTR(id_card,1,2) = '12';