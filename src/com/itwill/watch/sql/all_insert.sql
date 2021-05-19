--USERINFO
INSERT INTO userInfo(userNo, userId, userPassword, email, phone, zipCode, address, userJoinDate,userpaymentpassword)
    values          (UserInfo_userNo_SEQ.nextval,'aaa1111','aaa1234@','aaaa1111@naver.com','01012345678','06325','서울시강남구',sysdate,123456);
INSERT INTO userInfo(userNo, userId, userPassword, email, phone, zipCode, address, userJoinDate,userpaymentpassword)
    values          (UserInfo_userNo_SEQ.nextval,'bbb1111','bbb1234@','bbbb1111@gmail.com','01023456789','22783','인천서구',sysdate,111111);
INSERT INTO userInfo(userNo, userId, userPassword, email, phone, zipCode, address, userJoinDate,userpaymentpassword)
    values          (UserInfo_userNo_SEQ.nextval,'ccc1111','ccc1234@','ccc1111@naver.com','01011112222','423','경기도광명시',sysdate,222222);
INSERT INTO userInfo(userNo, userId, userPassword, email, phone, zipCode, address, userJoinDate,userpaymentpassword)
    values          (UserInfo_userNo_SEQ.nextval,'ddd1111','ddd1234@','ddd111@gmail.com','01022223333','122','서울시은평구',sysdate,333333);
INSERT INTO userInfo(userNo, userId, userPassword, email, phone, zipCode, address, userJoinDate,userpaymentpassword)
    values          (UserInfo_userNo_SEQ.nextval,'eee1111','eee1234@','eee1111@daum.net','01033334444','401','인천동구',sysdate,444444);
INSERT INTO userInfo(userNo, userId, userPassword, email, phone, zipCode, address, userJoinDate,userpaymentpassword)
    values          (UserInfo_userNo_SEQ.nextval,'gg1111','ggg1234@','ggg1111@naver.com','01044445555','06325','서울시강남구',sysdate,555555);
INSERT INTO userInfo(userNo, userId, userPassword, email, phone, zipCode, address, userJoinDate,userpaymentpassword)
    values          (UserInfo_userNo_SEQ.nextval,'hhh1111','hhh1234@','hhh1111@gmail.com','01066667777','03056','서울시종로구',sysdate,666666);
INSERT INTO userInfo(userNo, userId, userPassword, email, phone, zipCode, address, userJoinDate,userpaymentpassword)
    values          (UserInfo_userNo_SEQ.nextval,'iii2222','iii1234@','iii2222@naver.com','01077778888','410','고양시',sysdate,777777);
INSERT INTO userInfo(userNo, userId, userPassword, email, phone, zipCode, address, userJoinDate,userpaymentpassword)
    values          (UserInfo_userNo_SEQ.nextval,'jjj1111','jjj1234@','jjj1111@daum.net','01088889999','122','서울시은평구',sysdate,888888);
INSERT INTO userInfo(userNo, userId, userPassword, email, phone, zipCode, address, userJoinDate,userpaymentpassword)
    values          (UserInfo_userNo_SEQ.nextval,'kkk1111','kkkk1234@','kkkk1111@naver.com','01099990000','122','서울시종로구',sysdate,999999);

--PRODUCT
insert into product values(product_productno_SEQ.nextval, 'IWC', 1000000, '색상 :실버 톤, 자동 기계식 무브먼트.
소재 :스테인리스 스틸 100%.', 'iwc.png', 10);
insert into product values(product_productno_SEQ.nextval, '롤렉스', 1500000, '색상 :실버 톤, 자동 기계식 무브먼트.
소재 :스테인리스 스틸 100%.', 'rolex.png', 10);
insert into product values(product_productno_SEQ.nextval, '파텍필립', 2000000, '색상 :실버 톤, 자동 기계식 무브먼트.
소재 :스테인리스 스틸 100%.', 'patek.png', 10);
insert into product values(product_productno_SEQ.nextval, '오데마피게', 2500000, '색상 :실버 톤, 자동 기계식 무브먼트.
소재 :스테인리스 스틸 100%.', 'piguet.png', 10);
insert into product values(product_productno_SEQ.nextval, '오메가', 1000000, '색상 :실버 톤, 자동 기계식 무브먼트.
소재 :스테인리스 스틸 100%.', 'omega.png', 10);
insert into product values(product_productno_SEQ.nextval, '티쏘', 1000000, '색상 :실버 톤, 자동 기계식 무브먼트.
소재 :스테인리스 스틸 100%.', 'tissot.png', 10);
insert into product values(product_productno_SEQ.nextval, '카시오', 1500000, '색상 :실버 톤, 자동 기계식 무브먼트.
소재 :스테인리스 스틸 100%.', 'casio.png', 10);
insert into product values(product_productno_SEQ.nextval, '지샥', 2000000, '색상 :실버 톤, 자동 기계식 무브먼트.
소재 :스테인리스 스틸 100%.', 'gshock.png', 10);
insert into product values(product_productno_SEQ.nextval, '콘스탄트', 2500000, '색상 :실버 톤, 자동 기계식 무브먼트.
소재 :스테인리스 스틸 100%.', 'constant.png', 10);
insert into product values(product_productno_SEQ.nextval, '태그호이어', 1000000, '색상 :실버 톤, 자동 기계식 무브먼트.
소재 :스테인리스 스틸 100%.', 'tag.png', 10);

--CARD
insert into card values(Card_cardNo_SEQ.nextval, '1111-1111-1111-1111', 111, '01/22', 1111, 1);
insert into card values(Card_cardNo_SEQ.nextval, '2222-2222-2222-2222', 222, '01/22', 2222, 1);
insert into card values(Card_cardNo_SEQ.nextval, '3333-3333-3333-3333', 333, '01/22', 3333, 2);
insert into card values(Card_cardNo_SEQ.nextval, '4444-4444-4444-4444', 444, '01/22', 4444, 2);
insert into card values(Card_cardNo_SEQ.nextval, '5555-5555-5555-5555', 555, '01/22', 5555, 3);
insert into card values(Card_cardNo_SEQ.nextval, '6666-6666-6666-6666', 666, '01/22', 6666, 3);
insert into card values(Card_cardNo_SEQ.nextval, '7777-7777-7777-7777', 777, '01/22', 7777, 4);
insert into card values(Card_cardNo_SEQ.nextval, '8888-8888-8888-8888', 888, '01/22', 8888, 5);
insert into card values(Card_cardNo_SEQ.nextval, '9999-9999-9999-9999', 999, '01/22', 9999, 6);
insert into card values(Card_cardNo_SEQ.nextval, '0000-0000-0000-0000', 000, '01/22', 0000, 6);

--CART
insert into cart values(cart_cartno_seq.nextval,1,1,1);
insert into cart values(cart_cartno_seq.nextval,3,1,2);

insert into cart values(cart_cartno_seq.nextval,2,2,1);
insert into cart values(cart_cartno_seq.nextval,1,2,3);

insert into cart values(cart_cartno_seq.nextval,5,3,1);
insert into cart values(cart_cartno_seq.nextval,3,3,6);

insert into cart values(cart_cartno_seq.nextval,2,4,5);
insert into cart values(cart_cartno_seq.nextval,2,4,3);
insert into cart values(cart_cartno_seq.nextval,2,4,2);

insert into cart values(cart_cartno_seq.nextval,2,5,8);

--BOARD
--게시글 작성
insert into board(boardno, boardtype, boarddate, boardtitle, boardcontent, groupno, step, depth, userno, orderno) 
        values(Board_boardNo_SEQ.nextval,'[배송문의]',sysdate,'제목1','내용1',BOARD_BOARDNO_SEQ.currval,1,0,1,1);
insert into board(boardno, boardtype, boarddate, boardtitle, boardcontent, groupno, step, depth, userno, orderno)  
        values(Board_boardNo_SEQ.nextval,'[상품문의]',sysdate,'제목2','내용2',BOARD_BOARDNO_SEQ.currval,1,0,3,4);
insert into board(boardno, boardtype, boarddate, boardtitle, boardcontent, groupno, step, depth, userno, orderno) 
        values(Board_boardNo_SEQ.nextval,'[기타문의]',sysdate,'제목3','내용3',BOARD_BOARDNO_SEQ.currval,1,0,3,3);
        commit;
--답글 작성
/*
 * 	  boardno:시퀀스증가
 *    groupno:원글의 groupno
 *    step   :원글의 step+1
 *    depth  :원글의 depth+1
 */
insert into board(boardno, boardtype, boarddate, boardtitle, boardcontent, groupno, step, depth, userno) 
        values(Board_boardNo_SEQ.nextval,'[배송문의]',sysdate,'RE)제목1답글','내용1',1,2,1,1);
insert into board(boardno, boardtype, boarddate, boardtitle, boardcontent, groupno, step, depth, userno) 
        values(Board_boardNo_SEQ.nextval,'[상품문의]',sysdate,'RE)제목2답글','내용2',2,2,1,2);
insert into board(boardno, boardtype, boarddate, boardtitle, boardcontent, groupno, step, depth, userno) 
        values(Board_boardNo_SEQ.nextval,'[기타문의]',sysdate,'RE)제목3답글','내용3',3,2,1,3);

--BOARDFILE
INSERT INTO boardfile(boardfileno,filename,boardno) VALUES (BoardFile_boardFileNo_SEQ.nextval,'제목1-파일1',1);
INSERT INTO boardfile(boardfileno,filename,boardno) VALUES (BoardFile_boardFileNo_SEQ.nextval,'제목1-파일2',1);
INSERT INTO boardfile(boardfileno,filename,boardno) VALUES (BoardFile_boardFileNo_SEQ.nextval,'제목1-파일3',1);
INSERT INTO boardfile(boardfileno,filename,boardno) VALUES (BoardFile_boardFileNo_SEQ.nextval,'제목2-파일1',2);
INSERT INTO boardfile(boardfileno,filename,boardno) VALUES (BoardFile_boardFileNo_SEQ.nextval,'제목2-파일2',2);
INSERT INTO boardfile(boardfileno,filename,boardno) VALUES (BoardFile_boardFileNo_SEQ.nextval,'제목3-파일1',3);

--ORDER
insert into orderinfo(orderno,orderdate,orderprice,orderdesc,userno,cardno) values (ORDERINFO_ORDERNO_SEQ.nextval,sysdate,155000,'시계등 2종',1,1);
insert into orderinfo(orderno,orderdate,orderprice,orderdesc,userno,cardno) values (ORDERINFO_ORDERNO_SEQ.nextval,sysdate,155000,'시계등 2종',2,2);
insert into orderinfo(orderno,orderdate,orderprice,orderdesc,userno,cardno) values (ORDERINFO_ORDERNO_SEQ.nextval,sysdate,155000,'시계등 1종',3,3);
insert into orderinfo(orderno,orderdate,orderprice,orderdesc,userno,cardno) values (ORDERINFO_ORDERNO_SEQ.nextval,sysdate,155000,'시계등 1종',3,3);

--ORDERDETAIL
insert into orderdetail(orderdetailno,orderqty,orderno,productno)values (ORDERDETAIL_ORDERDETAILNO_SEQ.nextval,1,1,1);
insert into orderdetail(orderdetailno,orderqty,orderno,productno)values (ORDERDETAIL_ORDERDETAILNO_SEQ.nextval,2,1,2);
insert into orderdetail(orderdetailno,orderqty,orderno,productno)values (ORDERDETAIL_ORDERDETAILNO_SEQ.nextval,2,2,3);
insert into orderdetail(orderdetailno,orderqty,orderno,productno)values (ORDERDETAIL_ORDERDETAILNO_SEQ.nextval,3,2,4);
insert into orderdetail(orderdetailno,orderqty,orderno,productno)values (ORDERDETAIL_ORDERDETAILNO_SEQ.nextval,1,3,5);
insert into orderdetail(orderdetailno,orderqty,orderno,productno)values (ORDERDETAIL_ORDERDETAILNO_SEQ.nextval,1,3,5);

COMMIT;
