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