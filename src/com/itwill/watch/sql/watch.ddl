/**********************************/
/* Table Name: UserInfo */
/**********************************/
CREATE TABLE UserInfo(
		userNo                        		NUMBER(10)		 NULL ,
		userId                        		VARCHAR2(50)		 NULL ,
		userPassword                  		VARCHAR2(50)		 NULL ,
		email                         		VARCHAR2(50)		 NULL ,
		phone                         		VARCHAR2(50)		 NULL ,
		zipCode                       		NUMBER(10)		 NULL ,
		address                       		VARCHAR2(100)		 NULL ,
		userJoinDate                  		DATE		 NULL ,
		userPaymentPassword           		NUMBER(10)		 NULL 
);

CREATE SEQUENCE UserInfo_userNo_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TRIGGER UserInfo_userNo_TRG
BEFORE INSERT ON UserInfo
FOR EACH ROW
BEGIN
IF :NEW.userNo IS NOT NULL THEN
  SELECT UserInfo_userNo_SEQ.NEXTVAL INTO :NEW.userNo FROM DUAL;
END IF;
END;

COMMENT ON TABLE UserInfo is 'UserInfo';
COMMENT ON COLUMN UserInfo.userNo is 'userNo';
COMMENT ON COLUMN UserInfo.userId is 'userId';
COMMENT ON COLUMN UserInfo.userPassword is 'userPassword';
COMMENT ON COLUMN UserInfo.email is 'email';
COMMENT ON COLUMN UserInfo.phone is 'phone';
COMMENT ON COLUMN UserInfo.zipCode is 'zipCode';
COMMENT ON COLUMN UserInfo.address is 'address';
COMMENT ON COLUMN UserInfo.userJoinDate is 'userJoinDate';
COMMENT ON COLUMN UserInfo.userPaymentPassword is 'userPaymentPassword';


/**********************************/
/* Table Name: Card */
/**********************************/
CREATE TABLE Card(
		cardNo                        		VARCHAR2(50)		 NULL ,
		CVC                           		NUMBER(10)		 NULL ,
		cardEXP                       		VARCHAR2(50)		 NULL ,
		cardPassword                  		NUMBER(10)		 NULL ,
		userNo                        		NUMBER(10)		 NULL 
);

COMMENT ON TABLE Card is 'Card';
COMMENT ON COLUMN Card.cardNo is 'cardNo';
COMMENT ON COLUMN Card.CVC is 'CVC';
COMMENT ON COLUMN Card.cardEXP is 'cardEXP';
COMMENT ON COLUMN Card.cardPassword is 'cardPassword';
COMMENT ON COLUMN Card.userNo is 'userNo';


/**********************************/
/* Table Name: OrderInfo */
/**********************************/
CREATE TABLE OrderInfo(
		orderNo                       		NUMBER(30)		 NULL ,
		orderDate                     		DATE		 DEFAULT sysdate		 NULL ,
		orderPrice                    		NUMBER(30)		 NULL ,
		orderDesc                     		VARCHAR2(100)		 NULL ,
		userNo                        		NUMBER(10)		 NULL ,
		cardNo                        		VARCHAR2(50)		 NULL 
);

CREATE SEQUENCE OrderInfo_orderNo_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TRIGGER OrderInfo_orderNo_TRG
BEFORE INSERT ON OrderInfo
FOR EACH ROW
BEGIN
IF :NEW.orderNo IS NOT NULL THEN
  SELECT OrderInfo_orderNo_SEQ.NEXTVAL INTO :NEW.orderNo FROM DUAL;
END IF;
END;

COMMENT ON TABLE OrderInfo is 'OrderInfo';
COMMENT ON COLUMN OrderInfo.orderNo is 'orderNo';
COMMENT ON COLUMN OrderInfo.orderDate is 'orderDate';
COMMENT ON COLUMN OrderInfo.orderPrice is 'orderPrice';
COMMENT ON COLUMN OrderInfo.orderDesc is 'orderDesc';
COMMENT ON COLUMN OrderInfo.userNo is 'userNo';
COMMENT ON COLUMN OrderInfo.cardNo is 'cardNo';


/**********************************/
/* Table Name: Product */
/**********************************/
CREATE TABLE Product(
		productNo                     		NUMBER(30)		 NULL ,
		productName                   		VARCHAR2(50)		 NULL ,
		productPrice                  		NUMBER(30)		 NULL ,
		productDesc                   		VARCHAR2(100)		 NULL ,
		productImage                  		VARCHAR2(50)		 NULL ,
		productQty                    		NUMBER(30)		 NULL 
);

CREATE SEQUENCE Product_productNo_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TRIGGER Product_productNo_TRG
BEFORE INSERT ON Product
FOR EACH ROW
BEGIN
IF :NEW.productNo IS NOT NULL THEN
  SELECT Product_productNo_SEQ.NEXTVAL INTO :NEW.productNo FROM DUAL;
END IF;
END;

COMMENT ON TABLE Product is 'Product';
COMMENT ON COLUMN Product.productNo is 'productNo';
COMMENT ON COLUMN Product.productName is 'productName';
COMMENT ON COLUMN Product.productPrice is 'productPrice';
COMMENT ON COLUMN Product.productDesc is 'productDesc';
COMMENT ON COLUMN Product.productImage is 'productImage';
COMMENT ON COLUMN Product.productQty is 'productQty';


/**********************************/
/* Table Name: Cart */
/**********************************/
CREATE TABLE Cart(
		cartNo                        		NUMBER(30)		 NULL ,
		productQty                    		NUMBER(30)		 NULL ,
		userNo                        		NUMBER(10)		 NULL ,
		productNo                     		NUMBER(30)		 NULL 
);

CREATE SEQUENCE Cart_cartNo_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TRIGGER Cart_cartNo_TRG
BEFORE INSERT ON Cart
FOR EACH ROW
BEGIN
IF :NEW.cartNo IS NOT NULL THEN
  SELECT Cart_cartNo_SEQ.NEXTVAL INTO :NEW.cartNo FROM DUAL;
END IF;
END;

COMMENT ON TABLE Cart is 'Cart';
COMMENT ON COLUMN Cart.cartNo is 'cartNo';
COMMENT ON COLUMN Cart.productQty is 'productQty';
COMMENT ON COLUMN Cart.userNo is 'userNo';
COMMENT ON COLUMN Cart.productNo is 'productNo';


/**********************************/
/* Table Name: OrderDetail */
/**********************************/
CREATE TABLE OrderDetail(
		orderDetailNo                 		NUMBER(30)		 NULL ,
		orderQty                      		NUMBER(30)		 NULL ,
		orderNo                       		NUMBER(30)		 NULL ,
		productNo                     		NUMBER(30)		 NULL 
);

CREATE SEQUENCE OrderDetail_orderDetailNo_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TRIGGER OrderDetail_orderDetailNo_TRG
BEFORE INSERT ON OrderDetail
FOR EACH ROW
BEGIN
IF :NEW.orderDetailNo IS NOT NULL THEN
  SELECT OrderDetail_orderDetailNo_SEQ.NEXTVAL INTO :NEW.orderDetailNo FROM DUAL;
END IF;
END;

COMMENT ON TABLE OrderDetail is 'OrderDetail';
COMMENT ON COLUMN OrderDetail.orderDetailNo is 'orderDetailNo';
COMMENT ON COLUMN OrderDetail.orderQty is 'orderQty';
COMMENT ON COLUMN OrderDetail.orderNo is 'orderNo';
COMMENT ON COLUMN OrderDetail.productNo is 'productNo';


/**********************************/
/* Table Name: Board */
/**********************************/
CREATE TABLE Board(
		boardNo                       		NUMBER(30)		 NULL ,
		boardType                     		VARCHAR2(50)		 NOT NULL,
		boardDate                     		DATE		 DEFAULT sysdate		 NULL ,
		boardTitle                    		VARCHAR2(100)		 NOT NULL,
		boardContent                  		VARCHAR2(500)		 NOT NULL,
		groupNo                       		NUMBER(30)		 NOT NULL,
		step                          		NUMBER(30)		 NOT NULL,
		depth                         		NUMBER(30)		 DEFAULT 0		 NULL ,
		userNo                        		NUMBER(10)		 NOT NULL,
		orderNo                       		NUMBER(10)		 DEFAULT 0		 NULL 
);

CREATE SEQUENCE Board_boardNo_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TRIGGER Board_boardNo_TRG
BEFORE INSERT ON Board
FOR EACH ROW
BEGIN
IF :NEW.boardNo IS NOT NULL THEN
  SELECT Board_boardNo_SEQ.NEXTVAL INTO :NEW.boardNo FROM DUAL;
END IF;
END;

COMMENT ON TABLE Board is 'Board';
COMMENT ON COLUMN Board.boardNo is 'boardNo';
COMMENT ON COLUMN Board.boardType is 'boardType';
COMMENT ON COLUMN Board.boardDate is 'boardDate';
COMMENT ON COLUMN Board.boardTitle is 'boardTitle';
COMMENT ON COLUMN Board.boardContent is 'boardContent';
COMMENT ON COLUMN Board.groupNo is 'groupNo';
COMMENT ON COLUMN Board.step is 'step';
COMMENT ON COLUMN Board.depth is 'depth';
COMMENT ON COLUMN Board.userNo is 'userNo';
COMMENT ON COLUMN Board.orderNo is 'orderNo';


/**********************************/
/* Table Name: BoardFile */
/**********************************/
CREATE TABLE BoardFile(
		boardFileNo                   		NUMBER(30)		 NULL ,
		fileName                      		VARCHAR2(100)		 NULL ,
		boardNo                       		NUMBER(30)		 NULL 
);

CREATE SEQUENCE BoardFile_boardFileNo_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TRIGGER BoardFile_boardFileNo_TRG
BEFORE INSERT ON BoardFile
FOR EACH ROW
BEGIN
IF :NEW.boardFileNo IS NOT NULL THEN
  SELECT BoardFile_boardFileNo_SEQ.NEXTVAL INTO :NEW.boardFileNo FROM DUAL;
END IF;
END;

COMMENT ON TABLE BoardFile is 'BoardFile';
COMMENT ON COLUMN BoardFile.boardFileNo is 'boardFileNo';
COMMENT ON COLUMN BoardFile.fileName is 'fileName';
COMMENT ON COLUMN BoardFile.boardNo is 'boardNo';



ALTER TABLE UserInfo ADD CONSTRAINT IDX_UserInfo_PK PRIMARY KEY (userNo);

ALTER TABLE Card ADD CONSTRAINT IDX_Card_PK PRIMARY KEY (cardNo);
ALTER TABLE Card ADD CONSTRAINT IDX_Card_FK0 FOREIGN KEY (userNo) REFERENCES UserInfo (userNo);

ALTER TABLE OrderInfo ADD CONSTRAINT IDX_OrderInfo_PK PRIMARY KEY (orderNo);
ALTER TABLE OrderInfo ADD CONSTRAINT IDX_OrderInfo_FK0 FOREIGN KEY (userNo) REFERENCES UserInfo (userNo);
ALTER TABLE OrderInfo ADD CONSTRAINT IDX_OrderInfo_FK1 FOREIGN KEY (cardNo) REFERENCES Card (cardNo);

ALTER TABLE Product ADD CONSTRAINT IDX_Product_PK PRIMARY KEY (productNo);

ALTER TABLE Cart ADD CONSTRAINT IDX_Cart_PK PRIMARY KEY (cartNo);
ALTER TABLE Cart ADD CONSTRAINT IDX_Cart_FK0 FOREIGN KEY (userNo) REFERENCES UserInfo (userNo);
ALTER TABLE Cart ADD CONSTRAINT IDX_Cart_FK1 FOREIGN KEY (productNo) REFERENCES Product (productNo);

ALTER TABLE OrderDetail ADD CONSTRAINT IDX_OrderDetail_PK PRIMARY KEY (orderDetailNo);
ALTER TABLE OrderDetail ADD CONSTRAINT IDX_OrderDetail_FK0 FOREIGN KEY (orderNo) REFERENCES OrderInfo (orderNo);
ALTER TABLE OrderDetail ADD CONSTRAINT IDX_OrderDetail_FK1 FOREIGN KEY (productNo) REFERENCES Product (productNo);

ALTER TABLE Board ADD CONSTRAINT IDX_Board_PK PRIMARY KEY (boardNo);
ALTER TABLE Board ADD CONSTRAINT IDX_Board_FK0 FOREIGN KEY (userNo) REFERENCES UserInfo (userNo);

ALTER TABLE BoardFile ADD CONSTRAINT IDX_BoardFile_PK PRIMARY KEY (boardFileNo);
ALTER TABLE BoardFile ADD CONSTRAINT IDX_BoardFile_FK0 FOREIGN KEY (boardNo) REFERENCES Board (boardNo);

