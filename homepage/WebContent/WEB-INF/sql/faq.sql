drop table faq;

CREATE TABLE faq( 
  no  	  NUMBER(6)     NOT NULL,  -- 일련번호, -999999 ~ +999999
  fname   varchar(10)   not null,
  title   VARCHAR(100)  NOT NULL,  -- 메모 제목, 한글 50자 
  content VARCHAR(4000) NOT NULL,  -- 내용  
  wdate   DATE          NOT NULL,  -- 등록 날짜  
  viewcnt NUMBER(5)     DEFAULT 0, -- 조회수, -99999 ~ +99999  
  PRIMARY KEY(no)              -- 고유한 값, 중복 안됨    
);

select nvl(max(no),0)+1 as no from faq;

select * from faq;

insert into faq(no, title, content, fname, wdate)
values((select nvl(max(no),0)+1 as no from faq), '제목', '내용', '홍길동', sysdate);

insert into faq(no, title, content, fname, wdate)
values((select nvl(max(no),0)+1 as no from faq), '제목2', '내용2', '가길동', sysdate);

insert into faq(no, title, content, fname, wdate)
values((select nvl(max(no),0)+1 as no from faq), '제목3', '내용3', '나길동', sysdate);

insert into faq(no, title, content, fname, wdate)
values((select nvl(max(no),0)+1 as no from faq), '제목4', '내용4', '다길동', sysdate);

