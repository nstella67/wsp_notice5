--notice5.sql

--테이블 생성
CREATE TABLE notice5(
	noticeno NUMBER NOT NULL,		--공지사항 번호 
	title VARCHAR(300) NOT NULL, 		--공지 내용
	rname VARCHAR(50) NOT NULL, 	--작성자
	rdate DATE NOT NULL,					--등록일
	PRIMARY KEY (noticeno)
)
;

--목록
SELECT * FROM notice5
ORDER BY rdate DESC
;

--추가
INSERT INTO notice5(noticeno, title, rname, rdate)
VALUES(SELECT NVL(MAX(noticeno), 0)+1 AS noticeno FROM notice5, 'title', 'rname', sysdate)
;

