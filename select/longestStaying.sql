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