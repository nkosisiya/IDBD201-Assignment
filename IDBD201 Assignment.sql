--  BOOK
CREATE TABLE BOOK (
    ISBN             VARCHAR(255)    PRIMARY KEY,
    Title            VARCHAR(200)   NOT NULL,
    Price            DECIMAL(10,2),
    Quantity_on_Hand INT            DEFAULT 0,
    Reorder_Level    INT            DEFAULT 5,
    Publisher_ID     INT NOT NULL,
    FOREIGN KEY (Publisher_ID) REFERENCES PUBLISHER(Publisher_ID)
);

--  BOOK_AUTHOR  (junction: BOOK ↔ AUTHOR)
CREATE TABLE BOOK_AUTHOR (
    ISBN      VARCHAR(255) NOT NULL,
    Author_ID INT         NOT NULL,
    PRIMARY KEY (ISBN, Author_ID),
    FOREIGN KEY (ISBN)      REFERENCES BOOK(ISBN),
    FOREIGN KEY (Author_ID) REFERENCES AUTHOR(Author_ID)
);

-- BookOrder
CREATE TABLE BookOrder (
    OrderNo     INT         PRIMARY KEY,
    QuantityOrd INT         NOT NULL,
    Received    DATE,
    ISBN        VARCHAR(255) NOT NUll,
    FOREIGN KEY (ISBN) REFERENCES BOOK(ISBN)
)ENIGINE = InnoDB;

CREATE TABLE BookSale(
    ISBN     VARCHAR(255) NOT NUll,
    SaleID    INT  NOT NULL,
    PRIMARY KEY(ISBN, SaleID),
    FOREIGN KEY(ISBN) REFERENCES BOOK(ISBN),
    FOREIGN KEY(SaleID) REFERENCES SALE(SaleID),
)ENGINE = InnoDB; "Guys please ensure that all the tables have this at the end"

CREATE TABLE SALE(
    SaleId  INT NOT NULL"Also dont forget to add your NOT NULL/NUll",
    SaleDate DATE,
    SaleTotal DECIMALE(10,2),
    
)ENGINE = InnoDB

CREATE TABLE Publisher (
    Publisher_ID INT    PRIMARY KEY,
    Pub_Name TEXT NOT NULL,
    Pub_Email TEXT,
    Pub_Country TEXT,
)ENGINE = InnoDB
