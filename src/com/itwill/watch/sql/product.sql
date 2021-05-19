--구매시수량감소
update product set productqty = productqty-1  where productno = 1;
--상품리스트
select * from product;
--상품 삭제 추가
delete from product where productno=3;
--상품 이름 포함 % %로 구현.
select * from product where productname like '%오%';
--상품 가격으로 정렬 리스트
select * from product order by productprice desc;
select * from product order by productprice asc;

commit;