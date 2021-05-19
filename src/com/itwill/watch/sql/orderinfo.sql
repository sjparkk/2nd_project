
--회원 1의 주문 전체내역 
select * from orderinfo where userno=3;
--주문한개 
select * from orderinfo where orderno=7;
--주문한개의 상세페이지
select * from orderdetail;
select * from orderinfo;
select o.orderno , p.productname,p.productprice,o.orderqty from orderdetail o join product p on  o.productno=p.productno where o.orderno=7;


--주문상세 삭제 ,주문삭제
delete from  orderdetail where orderno=1; 
delete from  orderinfo where orderno=7; 

--회원 1의 주문한개 주문내역과 주문상세,주문제품 여러개
select  oi.orderno,p.productname,od.productno,od.orderqty from orderinfo oi 
join orderdetail od on oi.orderno=od.orderno 
join product p on od.productno=p.productno 
where oi.userno=3 ;


--주문 한개안의 물품갯수 계산하기 
select count(orderno) from orderdetail where orderno=0;

commit;

