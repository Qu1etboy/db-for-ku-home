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