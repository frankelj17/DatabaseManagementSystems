CREATE DATABASE jfrankel_Bankdatabase;
USE  jfrankel_Bankdatabase;

CREATE TABLE BANK
(
    Code INT(10) NOT NULL,
    Name CHAR(30) NOT NULL,
    Addr VARCHAR(30) NOT NULL,
    PRIMARY KEY (Code)
);

CREATE TABLE BANK_BRANCH
(
    Addr VARCHAR(30) NOT NULL,
    Branch_no INT(6) NOT NULL,
    FOREIGN KEY (Branch_no) REFERENCES BANK.Code
);

CREATE TABLE ACCOUNT
(
    Acct_no INT(10) NOT NULL,
    Balance INT(6) NOT NULL,
    Type CHAR(8) NOT NULL,
    PRIMARY KEY (Acct_no)
);

CREATE TABLE LOAN
(
    Loan_no INT(10) NOT NULL,
    Amount INT(6) NOT NULL,
    Type CHAR(10) NOT NULL,
    PRIMARY KEY (Loan_no)
);

CREATE TABLE CUSTOMER
(
    Ssn INT(9) NOT NULL,
    Name CHAR(20) NOT NULL,
    Addr VARCHAR(30) NOT NULL,
    Phone INT(10) UNIQUE NOT NULL,
    PRIMARY KEY (Ssn)
);

INSERT INTO BANK
VALUES
    ('101', 'Chase Bank', '64 West St.'),
    ('102', 'Bank of America', '845 Second Ave.'),
    ('103', 'Wells Fargo', '5239 Main St.'),
    ('104', 'Capital One Bank', '34 Jefferson Dr.'),
    ('105', 'Santander Bank', '1 Main St.'),
    ('106', 'TD Bank', '582B Stump St.')

INSERT INTO BANK_BRANCH
VALUES
    ('112 Free Ave.', '103'),
    ('6528 McKenzie Dr.', '101'),
    ('45 Third St.', '104'),
    ('394 Turtle Dr.', '106'),
    ('1954 Pensieve Ave.', '103'),
    ('539 Seam St.', '102'),
    ('3 West First St.', '104'),
    ('234 Casage Ave.', '103'),
    ('50 Lampighter Dr.', '103'),
    ('6529 Charter Way', '105'),
    ('501 Loess Ln.', '104'),
    ('921 Touring St', '106')

INSERT INTO ACCOUNT
VALUES
    ('58326', '53693', 'Savings'),
    ('34954', '10593', 'Savings'),
    ('33946', '1044', 'Checkings'),
    ('24534', '104953', 'Savings'),
    ('13245', '7049', 'Checkings')

INSERT INTO LOAN
VALUES
    ('58326', '10000', 'Auto'),
    ('34954', '42000', 'Home'),
    ('33946', '5000', 'Personal'),
    ('24534', '100000', 'Home'),
    ('13245', '58000', 'Student')

INSERT INTO CUSTOMER
VALUES
    ('110038573', 'Steve Rogers', '461 La Sierra St.', '6952666644'),
    ('849465779', 'Mike Mussina', '49 Clinton St.', '6823017528'),
    ('213773746', 'Tom Haverford', '47 Hartford Dr.', '8579210061'),
    ('266558882', 'Walter White', '891 Valley Dr.', '3292844622'),
    ('198939360', 'Steven Strange', '8551 Old Pilgrim St.', '7562249430')

/*
- Show Names of each bank

SHOW BANK.Name
FROM BANK

- Show the names of each bank and the branch number of its branches

SELECT BANK.Name, Branch_no
FROM BANK, BANK_BRANCH
WHERE BANK_BRANCH.Branch_no=BANK.Code

- Show the names of each CUSTOMER

SELECT CUSTOMER.Name
FROM CUSTOMER

- Show the names of each customer and the account number associated with a customer



- Show the names of each cutomer and addresses of the banks where they have loan accounts
*/