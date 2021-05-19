desc boardfile;

/*
이름          널?       유형            
----------- -------- ------------- 
BOARDFILENO NOT NULL NUMBER(30)    
FILENAME             VARCHAR2(100) 
BOARDNO              NUMBER(30)    
*/
--특정 게시물 파일 여러개
select * from boardfile  where boardno = 4; 

--특정 게시물 파일 한 개
select * from boardfile where boardno = 1 and boardfileno = 1;

--특정 게시물 전체 파일 삭제
delete from boardfile where boardno = 1;

--특정 게시물 일부 파일 삭제
delete from boardfile where boardno = 1 and boardfileno = 1;

