-- ผู้ใช้งานมีแบบสมัครสมาชิกและไม่สมัครสมาชิก
CREATE TABLE User (
    uid_card CHAR (13),
    u_phone_number CHAR (10)  NOT NULL,
    u_first_name VARCHAR (255)  NOT NULL,
    u_last_name VARCHAR (255) NOT NULL,
    u_email VARCHAR (255),
    password VARCHAR (255),
    is_ku_member VARCHAR (10),

    PRIMARY KEY (uid_card),
    UNIQUE (u_email) 
);

-- พนักงานของโรงแรม
CREATE TABLE Employee (
    empid_card CHAR(13),
    role_id INT(4) NOT NULL,
    emp_phone_number CHAR(10) NOT NULL,
    emp_first_name VARCHAR(255) NOT NULL,
    emp_last_name VARCHAR(255) NOT NULL,
    emp_email VARCHAR(255) NOT NULL,
    emp_password VARCHAR(255) NOT NULL,
    income FLOAT NOT NULL,

    UNIQUE (emp_email),
    CHECK (income >= 0),

    PRIMARY KEY(EMPID_card),
    FOREIGN KEY(role_id) REFERENCES Role(role_id)
);

-- บทบาทของพนักงาน
CREATE TABLE Role(
    role_id INT(4) AUTO_INCREMENT,
    role_title VARCHAR(255) NOT NULL,
    
    PRIMARY KEY(role_id),
    UNIQUE(role_title)
);

-- ห้องพัก
CREATE TABLE Room (
    room_id INT(4) AUTO_INCREMENT,
    room_type_id INT(4) NOT NULL,
    room_number INT(4) NOT NULL,
    room_status VARCHAR(255) NOT NULL,

    UNIQUE (room_number),
    CHECK (room_status IN ('Available', 'Unavailable', 'Maintenance')),

    PRIMARY KEY(room_id),
    FOREIGN KEY(room_type_id) REFERENCES RoomType(room_type_id)
);

-- ประเภทของห้องพัก
CREATE TABLE RoomType (
    room_type_id INT(4) AUTO_INCREMENT,
    room_type VARCHAR(31) NOT NULL,
    room_price FLOAT NOT NULL,
    room_image VARCHAR(255),
    room_description VARCHAR(255),

    CHECK (room_type IN ('Superior', 'Deluxe', 'Suite')),
    CHECK (room_price >= 0),

    PRIMARY KEY(room_type_id)
);

-- การจองห้องพัก
CREATE TABLE Booking (
    booking_id INT(4) AUTO_INCREMENT,
    room_id INT(4) NOT NULL,
    uid_card CHAR(13) NOT NULL,
    booking_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    check_in_date TIMESTAMP NOT NULL,
    check_out_date TIMESTAMP NOT NULL,
    number_of_resident INT NOT NULL,
    booking_status VARCHAR(20),
    
    CHECK(number_of_resident > 0 AND number_of_resident <= 2),
    CHECK(booking_status IN ('Success', 'Failed')),
    CHECK(check_in_date < check_out_date),
    
    PRIMARY KEY(booking_id),
    FOREIGN KEY(room_id) REFERENCES Room(room_id) ON DELETE CASCADE,
    FOREIGN KEY(uid_card) REFERENCES User(uid_card) ON DELETE CASCADE
);

-- ใบเสร็จ
CREATE TABLE Bill (
    invoice_id INT(4) AUTO_INCREMENT,
    uid_card char(13) NOT NULL,
    booking_id INT(4) UNIQUE NOT NULL,
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP NULL,
    if_late_payment BOOLEAN NOT NULL DEFAULT 0,
    expire_date TIMESTAMP NOT NULL,
    discount_amount FLOAT NOT NULL DEFAULT 0,

    PRIMARY KEY(invoice_id),
    FOREIGN KEY(booking_id) REFERENCES Booking(booking_id) ON DELETE CASCADE,
    FOREIGN KEY(uid_card) REFERENCES Booking(uid_card) ON DELETE CASCADE
);

-- รีวิว
CREATE TABLE Review (
    uid_card CHAR(13),
    room_id INT(4),
    rating FLOAT NOT NULL,
    comment TEXT,
    
    PRIMARY KEY (uid_card, room_id),
    FOREIGN KEY (uid_card) REFERENCES User(uid_card) ON DELETE CASCADE,
    FOREIGN KEY (room_id) REFERENCES Room(room_id) ON DELETE CASCADE
);