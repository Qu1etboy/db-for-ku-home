CREATE TABLE Employee (
    empid_card CHAR(13) AUTO_INCREMENT,
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