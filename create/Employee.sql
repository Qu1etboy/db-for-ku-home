CREATE TABLE Employee (
    id_card INT(4) AUTO_INCREMENT,
    role_id INT(4) NOT NULL,
    phone_number CHAR(10) NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    income FLOAT NOT NULL,

    UNIQUE (email),
    CHECK (income >= 0),

    PRIMARY KEY(id_card),
    FOREIGN KEY(role_id) REFERENCES Role(role_id)
);