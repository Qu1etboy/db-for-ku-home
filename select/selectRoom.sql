-- แสดงจํานวนห้องทั้งหมดจากตาราง room
SELECT COUNT(*) total_room FROM Room;

--  แสดงจํานวนห้องที่ว่างทั้งหมด พร้อมราคามาจากตาราง room
SELECT room_number, room_price FROM Room
NATURAL JOIN RoomType
WHERE room_status = 'Available';

-- แสดงรีวิวของห้องพักทั้งหมดจากตารางรีวิว
SELECT rating, comment, room_type, room_number 
FROM Review
NATURAL JOIN Room
NATURAL JOIN RoomType;

-- แสดงประเภทของห้องพักที่ได้รับคะแนนรีวิวสูงที่สุดพร้อม comment จากตาราง review
SELECT MAX(rating), comment, room_type, room_number
FROM Review
NATURAL JOIN Room
NATURAL JOIN RoomType;

--  แสดงตัวอย่างรูปของแต่ละห้องพักและราคาของห้องพักแต่ละประเภททั้งหมดมาจากตาราง room_type
SELECT room_type, room_image, room_description
FROM RoomType;