-- แสดงข้อมูลของรายได้ที่ได้ในเดือนๆ หนึ่งจากการรวมราคาห้องทั้งหมดจากการรวมตาราง bill, ตาราง booking และ ตาราง room เข้าด้วยกัน
SELECT DATE_FORMAT(temp2.payment_date, '%Y-%m') as month, SUM(RoomType.room_price - temp2.discount_amount) AS total
FROM(
    SELECT temp1.payment_date, Room.room_type_id, temp1.discount_amount
    FROM (
        SELECT Bill.payment_date, Bill.discount_amount, Booking.room_id, Booking.booking_status
        FROM Bill
        JOIN Booking ON Bill.booking_id = Booking.booking_id
        WHERE booking_status = 'success'
    ) AS temp1
    JOIN Room ON Room.room_id = temp1.room_id
) AS temp2
JOIN RoomType ON RoomType.room_type_id = temp2.room_type_id
GROUP BY month

-- แสดงจํานวนผู้ใช้โรงแรมทั้งหมดในเดือนๆ หนึ่งจากตาราง booking
SELECT temp1.month, COUNT(temp1.month) as total
FROM(
    SELECT DATE_FORMAT(check_in_date, '%Y-%m') AS month
    FROM Booking
    WHERE booking_status = 'success'
) AS temp1
GROUP BY temp1.month

-- แสดงข้อมูลชื่อ เบอร์โทร ของผู้ใช้ที่เข้าใช้ทั้งหมดจากตาราง user (เปลี่ยนโจทย์)
SELECT * FROM User;

-- แสดงข้อมูลของผู้ใช้ที่สมัครเป็นสมาชิกจากตาราง user (is_ku_member ไม่เป็น null)
SELECT uid_card,u_phone_number,concat(u_first_name,' ',u_last_name),u_email,is_ku_member
FROM user
WHERE is_ku_member IS NOT NULL;

-- แสดงข้อมูลเงินเดือนของพนักงานทั้งหมดรวมกันจากตาราง employee
SELECT SUM(income) As 'Total income of employee'
FROM Employee;

-- แสดงชื่อ,เบอร์ติดต่อและอีเมลของพนักงานตำแหน่งบริการของโรงแรมจากตาราง employee
SELECT emp_first_name, emp_last_name, emp_phone_number, emp_email, role_title
FROM Employee JOIN Role ON Employee.role_id = Role.role_id
WHERE Role.role_title IN ('Conciege','Housekeeping','Front desk agent');

-- แสดงข้อมูลการเข้าพักโรงแรมที่เข้าพักนานที่สุดจากตาราง booking
SELECT *
FROM booking
WHERE (
    (check_out_date-check_in_date) = (
        SELECT MAX(check_out_date-check_in_date)
        FROM booking
        WHERE booking_status = 'Success'
    ) AND booking_status = 'Success'
)

-- แสดงจํานวนพนักงานที่อยู๋ในตําแหน่งแม่บ้าน จากตาราง employee
SELECT COUNT(*) As "Total number of housekeeper"
FROM Employee
WHERE role_id = (SELECT role_id FROM Role WHERE role_title = 'HouseKeeping');

-- แสดงรีวิวที่ได้ rating 1 ดาว และ comment มาจากตาราง review 
SELECT rating, comment 
FROM Review
WHERE rating = 1;

-- แสดงจํานวนห้องทั้งหมดจากตาราง room
SELECT COUNT(*) total_room FROM Room;

--  แสดงจํานวนห้องที่ว่างทั้งหมด พร้อมราคามาจากตาราง room
SELECT room_number, room_price FROM Room
NATURAL JOIN RoomType
WHERE room_status = 'Available';

--  แสดงตัวอย่างรูปของแต่ละห้องพักและราคาของห้องพักแต่ละประเภททั้งหมดมาจากตาราง room_type
SELECT room_type, room_image, room_description
FROM RoomType;

-- แสดงรีวิวของห้องพักทั้งหมดจากตารางรีวิว
SELECT rating, comment, room_type, room_number 
FROM Review
NATURAL JOIN Room
NATURAL JOIN RoomType;

-- แสดงประเภทของห้องพักที่ผู้ใช้เป็นสมาชิกของทางโรงแรมและเป็นนิสิตนักศึกษาเข้าใช้มากที่สุดจากตาราง booking
SELECT temp2.room_type ,COUNT(temp2.room_type) as total
FROM (
	SELECT temp.booking_id, temp.room_type_id, RoomType.room_type
    FROM (
        SELECT Booking.booking_id, Room.room_id, Room.room_type_id, USER.is_ku_member
        FROM booking
        JOIN room ON Booking.room_id = Room.room_id
        JOIN USER ON Booking.uid_card = USER.uid_card
        WHERE is_ku_member = 'yes'
    ) AS temp
    JOIN RoomType ON RoomType.room_type_id = temp.room_type_id
) AS temp2
GROUP BY temp2.room_type
ORDER BY total DESC
LIMIT 1

-- แสดงประเภทของห้องพักที่ได้รับคะแนนรีวิวสูงที่สุดพร้อม comment จากตาราง review
SELECT MAX(rating), comment, room_type, room_number
FROM Review
NATURAL JOIN Room
NATURAL JOIN RoomType;

-- แสดงข้อมูลของผู้ใช้คนหนึ่งจากตาราง user โดยใช้ uid_card ในการหา
SELECT * FROM User 
Where uid_card='6410406878000';

-- แสดงประวัติการจองห้องของผู้ใช้คนหนึ่งจากตาราง booking โดยใช้ id_card ในการหา
SELECT *
FROM Booking
WHERE uid_card = '1010406232401'

-- แสดงชื่อ,เบอร์ติดต่อและอีเมลของพนักงานตำแหน่งบริการของโรงแรมจากตาราง employee
SELECT emp_first_name, emp_last_name, emp_phone_number, emp_email, role_title
FROM Employee JOIN Role ON Employee.role_id = Role.role_id
WHERE Role.role_title IN ('Conciege','Housekeeping','Front desk agent');

-- แสดงข้อมูลของประเภทห้องแต่ละแบบจากตาราง room_type
SELECT *
FROM RoomType