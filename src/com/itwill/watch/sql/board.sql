/*
이름           널?       유형            
------------ -------- ------------- 
BOARDNO      NOT NULL NUMBER(30)    
BOARDTYPE             VARCHAR2(50)  
BOARDDATE             DATE          
BOARDTITLE            VARCHAR2(50)  
BOARDCONTENT          VARCHAR2(500) 
GROUPNO               NUMBER(30)    
STEP                  NUMBER(30)    
DEPTH                 NUMBER(30)    
USERNO                NUMBER(10)  
*/

--수정하기
update board set boardtype='[상품문의]',boardtitle='제목수정',boardcontent='내용수정',orderno=1 where boardno = 20;

commit;
--게시글 삭제
DELETE from board b where b.boardno = 2;


--게시판 전체 조회
select b.*, u.userid
from board b
join userinfo u
on b.userno = u.userno
order by b.groupno desc, step asc;


--게시글 페이지 조회
select * from
    (select rownum idx, s.*  from
        (select boardtype, boardtitle,boarddate, groupno, step, depth, userno  
         from board
         order by groupno desc,step asc ) s )
where idx >= 1 and idx <= 10;


--내 글 조회
select b.boardtype, b.boardtitle, b.boarddate, groupno, step, depth
from board b
where b.userno = 5
order by groupno desc, step asc;


--게시글 번호로 조회
select b.*
from board b
where b.boardno = 5
order by groupno desc, step asc;

--1개 게시글의 답글 갯수
select count(*)
from board b
where step >= 2 and b.groupno = 5;

--게시글의 답변 존재여부
select case when count(*)>=1 then 1 else 0 end as isExisted
from board b
where step >= 2 and b.groupno = 24;


/*한 회원의 특정 게시글 조회
select b.boardtype, b.boardtitle, u.userid, b.boarddate, groupno, step, depth
from board b
inner join userinfo u
on b.userno = u.userno and groupno = 2 and u.userno = 2
order by groupno desc, step asc; 
*/
