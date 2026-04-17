--  BOOK
CREATE TABLE BOOK (
    ISBN             VARCHAR(20)    PRIMARY KEY,
    Title            VARCHAR(200)   NOT NULL,
    Price            DECIMAL(10,2),
    Quantity_on_Hand INT            DEFAULT 0,
    Reorder_Level    INT            DEFAULT 5,
    Publisher_ID     INT,
    FOREIGN KEY (Publisher_ID) REFERENCES PUBLISHER(Publisher_ID)
);

--  BOOK_AUTHOR  (junction: BOOK ↔ AUTHOR)
CREATE TABLE BOOK_AUTHOR (
    ISBN      VARCHAR(20) NOT NULL,
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
    ISBN        VARCHAR(20),
    FOREIGN KEY (ISBN) REFERENCES BOOK(ISBN)
);