/*แสดงข้อมูลชื่อ เบอร์โทร ของผู้ใช้ที่เข้าใช้ในปีที่ผ่านมาจากตาราง user*/


/*แสดงข้อมูลของผู้ใช้ที่สมัครเป็นสมาชิกจากตาราง user (is_ku_member ไม่เป็น null)*/
SELECT id_card,phone_number,concat(first_name,' ',last_name),email,is_ku_member
FROM user
WHERE is_ku_member IS NOT NULL;

/*แสดงข้อมูลของผู้ใช้คนหนึ่งจากตาราง user โดยใช้ id_card ในการหา*/

