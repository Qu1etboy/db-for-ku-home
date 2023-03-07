CREATE TABLE Employee (
    EMPID_card INT(4) AUTO_INCREMENT,
    role_id INT(4) NOT NULL,
    EMP_phone_number CHAR(10) NOT NULL,
    EMP_first_name VARCHAR(255) NOT NULL,
    EMP_last_name VARCHAR(255) NOT NULL,
    EMP_email VARCHAR(255) NOT NULL,
    EMP_password VARCHAR(255) NOT NULL,
    income FLOAT NOT NULL,

    UNIQUE (EMP_email),
    CHECK (income >= 0),

    PRIMARY KEY(EMPID_card),
    FOREIGN KEY(role_id) REFERENCES Role(role_id)
);