# Annotation을 사용하지 않고 게시판 만들기 
MVC_Pattern 에서의 게ㅣ판과 외형은 같으나 기능구현을 spring으로 함    

db는 다음과 같다  
====================================  
create table board  
(num number primary key,  
writer varchar2(10) not null, 
email varchar2(30), 
subject varchar2(50) not null,  
passwd varchar2(12) not null, 
reg_date varchar2(10) not null, 
readcount number default 0, 
content varchar2(4000) not null,  
ip varchar2(20) not null);  
    
create sequence spring_board_seq; 
