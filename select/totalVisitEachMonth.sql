-- แสดงจํานวนผู้ใช้โรงแรมทั้งหมดในเดือนๆ หนึ่งจากตาราง booking
SELECT temp1.month, COUNT(temp1.month) as total
FROM(
    SELECT DATE_FORMAT(check_in_date, '%Y-%m') AS month
    FROM Booking
    WHERE booking_status = 'success'
) AS temp1
GROUP BY temp1.month