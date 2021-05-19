INSERT INTO userInfo(userNo, userId, userPassword, email, phone, zipCode, address, userJoinDate,userpaymentpassword)
    values          (UserInfo_userNo_SEQ.nextval,'aaa1111','aaa1234@','aaaa1111@naver.com','01012345678','06325','서울시강남구',sysdate,123456);


--회원가입
INSERT INTO userInfo(userNo, userId, userPassword, email, phone, zipCode, address, userJoinDate, userPaymentPassword) 
     values         (?,?,?,?,?,?,?,?,?);
--회원정보수정	

UPDATE userInfo SET userPassword = ? , email = ? , phone, zipCode = ? ,address =?, userPaymentPassword=? where userno=? ;
--회원탈퇴
DELETE FROM userInfo    WHERE userId = ? ;
--회원아이디로 회원정보찾기
SELECT userNo, userId, userPassword, email, phone, zipCode, address, userJoinDate, userPaymentPassword from userInfo where userId=? ;

select count(*) from userInfo where userId=?;