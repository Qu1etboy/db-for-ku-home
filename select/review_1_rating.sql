-- แสดงรีวิวที่ได้ rating 1 ดาว และ comment มาจากตาราง review 
SELECT rating, comment 
FROM Review
WHERE rating = 1;