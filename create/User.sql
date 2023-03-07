CREATE TABLE User (
    UID_card CHAR (13),
    U_phone_number CHAR (10)  NOT NULL,
    U_first_name VARCHAR (50)  NOT NULL,
    U_last_name VARCHAR (50) NOT NULL,
    U_email VARCHAR (50),
    password VARCHAR (50),
    is_ku_member VARCHAR (10),

    PRIMARY KEY (UID_card),
    UNIQUE (U_email) 
);