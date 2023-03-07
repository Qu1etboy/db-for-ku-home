CREATE TABLE User (
    id_card CHAR (13),
    phone_number CHAR (10)  NOT NULL,
    first_name VARCHAR (50)  NOT NULL,
    last_name VARCHAR (50) NOT NULL,
    email VARCHAR (50),
    password VARCHAR (50),
    is_ku_member VARCHAR (10),

    PRIMARY KEY (id_card),
    UNIQUE (email) 
);