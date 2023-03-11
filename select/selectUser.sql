-- แสดงข้อมูลชื่อ เบอร์โทร ของผู้ใช้ที่เข้าใช้ทั้งหมดจากตาราง user (เปลี่ยนโจทย์)
SELECT * FROM User;

-- แสดงข้อมูลของผู้ใช้ที่สมัครเป็นสมาชิกจากตาราง user (is_ku_member ไม่เป็น null)
SELECT uid_card,u_phone_number,concat(u_first_name,' ',u_last_name),u_email,is_ku_member
FROM user
WHERE is_ku_member IS NOT NULL;

-- แสดงข้อมูลของผู้ใช้คนหนึ่งจากตาราง user โดยใช้ uid_card ในการหา
SELECT * FROM User 
Where uid_card='6410406878000';

-- แสดงข้อมูลของผู้ใช้คนหนึ่งจากตาราง user โดยใช้ uid_card แค่เลขบัตรสี่ตัวสุดท้ายในการหา
SELECT * FROM User 
Where SUBSTR(uid_card,10) = '8000';

-- แสดงข้อมูลของผู้ใช้คนหนึ่งจากตาราง user โดยใช้ uid_card เลขบัตรสองตัวแรกในการหา
SELECT uid_card, SUBSTR(uid_card,1,2), u_phone_number,concat(u_first_name,' ',u_last_name),u_email,is_ku_member
FROM user
WHERE SUBSTR(uid_card,1,2) = '12';