--orderdetail 추가 
insert into orderdetail(orderdetailno,orderqty,orderno,productno)values (ORDERDETAIL_ORDERDETAILNO_SEQ.nextval,1,7,1);

--모든 orderdetail 검색 
select * from orderdetail;

--orderdetail 삭제 (orderno)
delete from  orderdetail where orderno=1; 

--orderdetail 삭제 (orderdetailno)
delete from orderdetail where orderdetailno=6;

--orderdetail의 물품 갯수 변경 
update orderdetail set orderqty=2 where orderdetailno=6;