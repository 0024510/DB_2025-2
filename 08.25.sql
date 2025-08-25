create table 고객(
  고객아이디 VARCHAR(20) not null primary key,
  고객이름 varchar(10) not null,
  나이 INT,
  등급 varchar(10) not null,
  직업 VARCHAR(20),
  적립금 INT DEFAULT 0
);

create table 제품(
      제품번호 VARCHAR(5) not null,
      제품명 VARCHAR(20),
      재고량 INT,
      단가 INT,
      제조업체 VARCHAR(20),
      PRIMARY KEY(제품번호),
      check(재고량>=0 and 재고량<=10000)
      );
      
create table 주문(
      주문번호 VARCHAR(5) not null,
      주문고객 VARCHAR(20),
      주문재품 VARCHAR(5),
      수량  INT,
      배송지 VARCHAR(30),
      주문일자 DATE,
      PRIMARY KEY(주문번호),
      FOREIGN key(주문고객) REFERENCES 고객(고객아이디),
      FOREIGN key(주문재품) REFERENCES 재품(재품번호)
      );
     
      
create table 배송업체(
       업체번호 VARCHAR(5) not null primary key,
       업체명  VARCHAR(20),
       주소  VARCHAR(100),
       전화번호  VARCHAR(20)    
);

alter table 고객 add 가입날짜 date;
alter table 고객 drop column 가입날짜;
