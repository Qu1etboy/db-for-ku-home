CREATE TABLE Role(
    role_id INT(4) AUTO_INCREMENT,
    role_title VARCHAR(20) NOT NULL,
    PRIMARY KEY(role_id),
    UNIQUE(role_title)
);