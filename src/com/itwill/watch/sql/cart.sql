select * from cart where userno='1';
-- 카트번호&유저번호로 카트수량수정
update cart set productqty='2' where cartno='1';
-- 카트번호로 카트 삭제
delete from cart where cartno='1';
-- 회원번호로 카트 전체 삭제
delete from cart where userno='1';

--회원 select문에 userid로 userno찾는 select문 있어야함
--주문시 해당 product 갯수 업데이트