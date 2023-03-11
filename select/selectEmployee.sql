-- แสดงชื่อ เบอร์โทรและอีเมลของตําแหน่งผู้บริหารทั้งหมดจากตาราง employee
SELECT emp_first_name, emp_last_name, emp_phone_number, emp_email
FROM Employee JOIN Role ON Employee.role_id = Role.role_id
WHERE Role.role_title = "Admin";

-- แสดงข้อมูลเงินเดือนของพนักงานทั้งหมดรวมกันจากตาราง employee
SELECT SUM(income) As 'Total income of employee'
FROM Employee;

-- แสดงจํานวนพนักงานที่อยู๋ในตําแหน่งแม่บ้าน จากตาราง employee
SELECT COUNT(*) As "Total number of housekeeper"
FROM Employee
WHERE role_id = (SELECT role_id FROM Role WHERE role_title = 'HouseKeeping');

-- แสดงชื่อ,เบอร์ติดต่อและอีเมลของพนักงานตำแหน่งบริการของโรงแรมจากตาราง employee
SELECT emp_first_name, emp_last_name, emp_phone_number, emp_email, role_title
FROM Employee JOIN Role ON Employee.role_id = Role.role_id
WHERE Role.role_title IN ('Conciege','Housekeeping','Front desk agent');