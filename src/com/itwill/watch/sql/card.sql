delete from card where cardNo=1;

select cardNo from card where userNo=1;

SELECT cardNo, SUBSTR(cardno, 1, 4) || '-****-****-' as cardId, userNo FROM card where userno=2;

select count(*) isexisted from card where cardid='1111-1111-1111-1111';

commit;

select
		cardno,
		substr(cardId, 1, 4) || '-****-****-' ||
		substr(cardId, 16, 4) as cardId,
		userno
		from card where
		userNo=2;
        
select substr(cardId, 1, 4) || '-****-****-' ||
		substr(cardId, 16, 4) as cardId from card where cardNo=2;