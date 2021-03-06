use bank;

#insert문
insert into department

values
(1,'인사'),
(2,'고객');
#퇴사 사원 구분은 0을 근무사원, 1를 퇴사사원으로 한다
desc employee;
insert into employee values
('A001','나인사','부장','HR',6000000,'010-1233-1111','hrid1111',password('testforhr'),1,null,0),
('A002','정아름','차장','HR',5000000,'010-5840-1111','hrid2222',password('testforhr'),1,null,0),
('A003','이상원','과장','HR',4000000,'010-1549-1111','hrid3333',password('testforhr'),1,null,0),
('A004','서지수','대리','HR',3000000,'010-3296-1111','hrid4444',password('testforhr'),1,null,0),
('A005','박민호','사원','HR',2000000,'010-1597-1111','hrid5555',password('testforhr'),1,null,0),
('A006','고희연','사원','HR',2000000,'010-6444-1111','hrid6666',password('testforhr'),1,null,0),
('A007','정윤호','사원','HR',2000000,'010-7423-1111','hrhrhr',password('hrhrhr'),1,null,0),
-- 고객팀
('B001','나지점','지점장','AD',10000000,'010-1234-1234','adid1111',password('testforad'),2,null,0),
('B002','장현서','부지점장','CS',8000000,'010-4444-7767','csid1111',password('testforcs'),2,null,0),
('B003','박인선','부장','CS',6000000,'010-2992-2222','csid2222',password('testforcs'),2,null,0),
('B004','황하나','차장','CS',5000000,'010-2222-1111','csid3333',password('testforcs'),2,null,0),
('B005','현재승','과장','CS',4000000,'010-2282-4848','csid4444',password('testforcs'),2,null,0),
('B006','황태원','대리','CS',3000000,'010-2902-5959','cscscs',password('cscscs'),2,'staff2.png',0),
('B007','나고객','사원','CS',2000000,'010-5489-7346','csid7777',password('testforcs'),2,'staff2.jpg',0),
('B008','테스트','지점장','AD',10000000,'010-1234-1234','111',password('111'),2,'chaeunwoo.png',0),
('B009','아몬드','대리','CS',2000000,'010-1578-5436','csid9999',password('testforcs'),2,null,0),
('B010','장우주','사원','CS',2000000,'010-1258-8563','csid1010',password('testforcs'),2,null,0),
('B011','방송국','사원','CS',2000000,'010-6982-5312','csid0011',password('testforcs'),2,null,0),
('B012','서민지','사원','CS',2000000,'010-5734-1543','csid0012',password('testforcs'),2,null,0),
('B013','성시현','사원','CS',2000000,'010-9644-4321','csid0013',password('testforcs'),2,'staff3.png',1),
('B014','민희영','사원','CS',2000000,'010-4231-3443','csid0014',password('testforcs'),2,'staff5.png',1),
('B015','김다린','사원','CS',2000000,'010-3290-6431','csid0015',password('testforcs'),2,null,0),
('B016','최지원','사원','CS',2000000,'010-7323-4543','csid0016',password('testforcs'),2,null,0),
('B017','연소희','사원','CS',2000000,'010-4443-7345','csid0017',password('testforcs'),2,null,0),
('B018','주경미','사원','CS',2000000,'010-6424-3424','csid0018',password('testforcs'),2,null,0),
('B019','서연정','사원','CS',2000000,'010-3290-7134','csid0019',password('testforcs'),2,null,0),
('B020','차은우','사원','CS',2000000,'010-5834-8555','csid0020',password('testforcs'),2,null,0),
('B021','배소경','사원','CS',2000000,'010-3290-3343','csid0021',password('testforcs'),2,null,0),
('B022','김천경','사원','CS',2000000,'010-1385-4577','csid0022',password('testforcs'),2,null,0);
#고객 구분은 0을 일반고객, 1를 기업고객으로 한다
desc customer;
insert into customer values 
("C001", "김서형", 1, "서울시 강남구 논현동", "010-7598-4533",0), 
("C002", "김혜수", 1, "서울시 강남구 역삼동", "010-9325-5412",0),
("C003", "한지민", 1, "서울시 강남구 청담동", "010-6325-5224",0),
("C004", "장나라", 1, "서울시 송파구 잠실동", "010-3257-6437",0),
("C005", "공효진", 1, "인천광역시 남구 주안동", "010-2578-3279",0),
("C006", "김향기", 2, "경기도 수원시 권선구 세류동", "010-7722-3140",0),
("C007", "강소라", 2, "경기도 용인시 처인구 마평동", "010-1325-0314",0),
("C008", "한효주", 2, "전주시 완산구 삼천동", "010-5972-2310",0),
("C009", "박보영", 2, "광주광역시 서구 치평동", "010-3652-1234",0),
("C010", "한가인", 3, "광주광역시 광산구 우산동", "010-7701-4322",0),
("C011", "배두나", 3, "부산광역시 동래구 안락동", "010-3265-1114",0),
("C012", "김설현", 3, "부산광역시 금정구 서동", "010-0311-1773",0),
("C013", "박예진", 3, "부산광역시 금정구 금사동", "010-8990-9314",0),
("C014", "오연수", 3, "부산광역시 부산진구 연지동", "010-5441-6593",0),
("C015", "차은우", 4, "부산광역시 남구 용당동", "010-6265-7891",0),
("C016", "박지민", 4, "부산광역시 영도구 동삼동", "010-6890-9835",0),
("C017", "전정국", 4, "제주시 애월읍", "010-3200-7925",0),
("C018", "민윤기", 4, "대구시 수성구 황금동", "010-3210-7900",0),
("C019", "김태형", 4, "대구시 수성구 범어동", "010-6040-1018",0),
("C020", "정윤호", 5, "대구시 수성구 만촌동", "010-4550-1766",0),
("C021", "최창민", 5, "대구시 달서구 성당동", "010-3468-7772",0),
("C022", "한예슬", 5, "대구시 서구 내당동", "010-1358-3165",0),
("C023", "임예진", 5, "대구시 중구 삼덕동", "010-3050-4700",0),
("C024", "추자현", 5, "대구시 달서구 두류동", "010-7894-1240",0),
("C025", "손가인", 1, "광주 광역시 광산구 신창동", "010-4538-1125",0),
("C026", "문별이", 3, "전주시 덕진구 진북동", "010-4211-0004",0),
("C027", "김용선", 3, "전주시 완산구 서신동", "010-3389-4710",0),
("C028", "김고은", 4, "울산광역시 남구 신정동", "010-3758-8588",0),
("C029", "차예련", 4, "울산광역시 남구 신정1동", "010-3334-0089",0),
("C030", "김정은", 4, "울산광역시 북구 효문동", "010-9797-1131",0),
("B001", "(주)에이스 테크놀로지", 2, "인천 연수구 하모니로187번길 16", "032-458-1942", 1);

insert into plan values("A001", "AA001", "슈퍼정기예금", "가입자 맞춤형 다기능 정기예금", "CV"), -- VIP / 예금
					   ("A002", "AB001", "주거래 DREAM 적금", "거래에 따라 우대하는 주거래 고객 맞춤형 적금", "CV"), -- VIP/적금
					   ("A003", "AC001", "행복 사업 통장", "사업 첫 시작을 위한 마이너스 통장", "CV"), -- VIP/마이너스통장
					   ("B001", "BA001", "S20 체크카드", "스무살의 첫 시작", "CV"), -- VIP/체크카드
					   ("B002", "BB001", "Deep Dream Platinum", "주거래 고객을 위한 플래티넘 신용카드", "CV"), -- VIP/신용카드
					   ("C001", "CA001", "전세자금 대출", "주택에 전세로 입주하는 고객을 위한 일반대출", "CV"), -- VIP/일반대출
					   ("C002", "CB001", "프리미엄 론", "신용 우량 회원을 위한 간편한 대출", "CV"), -- VIP/신용대출
					   ("C003", "CC001", "스피드론", "서류없는 빠른 카드 대출", "CV"), -- VIP/카드대출
					   ("A004", "AA002", "e편한 정기예금", "만기일을 자유롭게 설계하는 예금", "CN"), -- 일반/예금
					   ("A005", "AB002", "첫급여 DREAM 적금", "첫 급여 이체 적금", "CN"), -- 일반/적금
					   ("A006", "AC002", "YN 샐러리론", "직장인을 위한 우대 마이너스 통장", "CN"), -- 일반/마이너스통장
					   ("B003", "BA002", "YNx카카오 체크카드", "대학생을 위한 카카오페이와 연동되는 체크카드", "CN"), -- 일반/체크카드
					   ("B004", "BB002", "디데이 신용카드", "디데이마다 제휴사 할인쿠폰이 제공되는 신용카드", "CN"), -- 일반/신용카드
					   ("C004", "CA002", "패밀리 대출", "YN은행 임직원을 위한 무서류 일반대출", "CN"), -- 일반/일반대출
					   ("C005", "CB002", "아파트 소유자 대출", "본인명의 아파트 소유자를 위한 신용 대출", "CN"), -- 일반/신용대출
					   ("C006", "CC002", "YN Go Anywhere", "refresh 여행을 위한 빠른 카드 대출", "CN"), -- 일반/카드대출
					   ("A007", "AA003", "늘푸른 하늘 통장","미세먼지 저감을 위해 환경 보호 실천서약에 동참하는 기업에게 우대금리를 제공하는 거치식 예금상품","BN"), -- 기업/예금
					   ("A008", "AB003", "성공의 법칙 적금","제로페이 가맴정 결제대금 입금 똔느 BC카드 매출대금이 입급되는 기업고객에게 금리 우대 혜택을 드리는 적립식 적금","BN"), -- 기업/적금
					   ("A009", "AC003", "중소기업 힘내라 마이너스 통장","중소기업 사장님들을 위한 저금리의 마이너스 통장대출 상품","BN"), -- 기업/마이너스
					   ("B005", "BA003", "법인 사업자를 위한 All-in-One 체크 카드","법인 사업자를 위해 준비했습니다! 신용카드에 버금가는 혜택의 체크카드","BN"), -- 기업/체크카드
					   ("B006", "BB003", "Black Business Platinum","기업 전용 출장이 잦은 회사를 위한 라운지 위주의 할인 혜택의 신용카드","BN"), -- 기업/신용카드
					   ("B007", "BB004", "헬스케어 신용카드","의료혜택이 있는 헬스케어 신용카드","CN"), -- 일반/신용카드
					   ("C007", "CA003", "기업 자생을 위한 힘내라 기업 대출","사장님들을 위한 희소식! 기업을 위한 대출이 엄청난 혜택을 가지고 돌아왔다!","BN"), -- 기업/일반대출
					   ("C008", "CB003", "Business 행복 신용 대출","신용 등급이 좋은 우수 기업에게만 제공됩니다. 이런 상품은 어디에도 없다!","BN"), -- 기업/신용대출
					   ("C009", "CC003", "Black Business 카드 대출","오직 Black Business Platinum 카드 제공자에게만 제공되는 엄청난 대출 혜택!","BN"),-- 기업/카드론
					   ("C010", "CA004", "기업 VIP 테스트 상품", "기업 VIP 고객을 위한 상품", "BV"); -- 기업 VIP 
					   						   			   				   
desc bankbook;
					   
insert into bankbook values
('293133-11-000001','C001','A001',now(),0.15,10000000,0,0,'B007',1),
('293133-12-000002','C001','A002',now(),0.10,10000000,0,0,'B007',0),
('293133-13-000003','C001','A003',now(),0.01,10000000,0,0,'B007',0),
('293133-11-000004','C002','A001',now(),0.15,10000000,0,0,'B007',1),
('293133-12-000005','C002','A002',now(),0.10,100000000,0,0,'B007',0),
('293133-13-000006','C002','A003',now(),0.01,100000000,0,0,'B008',0),
('293133-11-000007','B001','A007',now(),0.30,1000000000,0,0,'B002',0);

insert into card values
('2931331000000010','C001','B001',111,now(),null,(select accountbalance from bankbook where custcode = 'C001' and accountnum = '293133-11-000001'),'B008','293133-11-000001'),
('2931332000000020','C001','B002',222,now(),10000000,null,'B008',null),
('2931331000000030','C002','B001',333,now(),null,(select accountbalance from bankbook where custcode = 'C002' and accountnum = '293133-11-000004'),'B007','293133-11-000004'),
('2931332000000040','C002','B002',444,now(),10000000,null,'B007',null),
('2931332000000050','C003','B002',555,now(),10000000,null,'B001',null),
('2931332000000060','C004','B002',666,now(),10000000,null,'B001',null),
('2931332000000070','C005','B002',777,now(),10000000,null,'B002',null);


insert into performance(plancode,empcode,custcode) values
('A001','B007','C001'),('A002','B007','C001'),('A003','B007','C001'),('A001','B007','C002'),('A002','B007','C002'),
('A003','B008','C002'),('A007','B002','B001'),('B001','B008','C001'),('B002','B008','C001'),('B001','B007','C002'),
('B002','B007','C002'),('B002','B001','C003'),('B002','B001','C004'),('B002','B002','C005'),
('B007','B008','C001'),('B007','B008','C002'),('B007','B008','C003'),('B007','B008','C004'),
('B007','B008','C005'),('B007','B008','C006'),('B007','B008','C007'),('B007','B008','C008'),
('B007','B008','C009');

insert into transferringbankbook values
('265-13-021846','031','대구은행','연미주(그릇계모임)',100000),
('265-13-021846','011','농협','도연우',1000),
('265-13-021846','004','국민은행','정수진',2000000),
('265-13-021846','020','우리은행','마동성',100000000),
('265-13-021846','071','우체국','도하성',45000),
('010-4334-4321','090','카카오뱅크','성진우',1900000);
#통장 테이블 
#statistic table 생성
drop view if exists vipTable;  

create view vipTable as select custCode as vip from customer c where `custCredit`="1";


#우수사원 패널
create view ranking as select e.empCode, e.empName, e.empTitle, count(if(p.custCode=null,0,p.custCode)) as perf , if(count(if(p.custCode=null,0,p.custCode))>=10,e.`empSalary`*0.1,0) as bonus, if(p.`planCode`='A001',vip,null) as vip
from employee e left join performance p on e.`empCode` = p.`empCode`  left join customer c on p.`custCode`=c.`custCode` left join viptable v on p.`custCode`= v.vip
group by e.`empCode`;

#예금계좌 정보
create view bankbook_deposit_connect_to_card_info as select accountnum,custcode,connectchk from bankbook where substring(accountnum,8,2)='11' and connectchk = 0;

insert into notice(subject,writer,write_date,content) 
values("코로나19 다 함께 이겨냅시다!","작성자",now(),"YN BANK 직원 어려분 코로나 19 때문에 은행이 부도 위기에 처했지만, 여러분의 노고만이 회사를 살리는 유일한 길입니다. 저희 은행은 절대 직원 여러분을 버리지 않습니다. 다들 심기일전하여 코로나 19를 극복하고, YN BANK를 전세계 1위 은행으로 발돋움하게 노력합시다"),
("이번달 목표 상품은 헬스케어신용카드입니다.","작성자",now(),"코로나 이슈로 인해 국민 건강에 관한 관심이 높아지는 환경에 부응하듯 의료 혜택이 추가된 신용카드가 출시되었습니다. 고객들에게 상품을 소개하고 적극적인 가입유도 부탁드립니다. 상품 코드는 000입니다.");

drop view if exists bank_totalbalance;

create view bank_totalBalance as select ((select sum(accountBalance) from bankbook where accountnum like '%-11-%' or accountnum like '%-12-%') + ifnull((select sum((loanBalance * loaninterest) / 12) from repayment),0)) as 'totalBankBookAmount', 
((select sum(accountBalance) from bankbook where accountnum like '%-13-%') + ifnull((select sum(loanBalance) from loan where loanExpired = 0),0)) as 'totalLoanAmount',
((select sum(accountBalance) from bankbook where accountnum like '%-11-%' or accountnum like '%-12-%') - ((select sum(accountBalance) from bankbook where accountnum like '%-13-%') + ifnull((select sum(loanBalance) from loan where loanExpired = 0),0))) as 'totalBankAmount';

-- 입금/출금 기능 
drop trigger if exists tri_after_update_BankBook;
delimiter $$
create trigger tri_after_update_BankBook
  	after update on BankBook
   for each row 
   begin
	  if(old.accountBalance < new.accountBalance) then
     	 insert into cust_DW_audit values
      		("입금", 
      		(select custName from customer where custCode = new.custCode), 
      		new.accountNum,
      		(new.accountBalance - old.accountBalance),
      		new.accountBalance,
      		Now()
      		);
      else
     	 insert into cust_DW_audit values
      		("출금", 
      		(select custName from customer where custCode = new.custCode), 
      		new.accountNum,
      		(old.accountBalance - new.accountBalance),
      		new.accountBalance,
      		Now()
      		);
      end if;
   end $$
delimiter ;


-- 입/출금 row level locking 프로시저

drop procedure if exists pro_update_balance_locking;

delimiter $
create procedure pro_update_balance_locking(
	in in_accountbalance bigint,
	in in_accountnum char(16),
	in in_text varchar(10)
)
begin
	start transaction;
	set AUTOCOMMIT=false;
	select * from bankbook where accountNum = in_accountnum for update;
	if in_text="입금"
	then update bankbook set accountBalance = accountBalance + in_accountbalance where accountNum= in_accountnum;
	elseif in_text="출금"
	then update bankbook set accountBalance = accountBalance - in_accountbalance where accountNum= in_accountnum;
	end if;
	commit;
	set AUTOCOMMIT=true;
end $
delimiter ;

-- 입/출금 row level locking 실행 프로시저

drop procedure if exists pro_update_balance_locking_commit;

delimiter $
create procedure pro_update_balance_locking_commit(
	in in_accountbalance bigint,
	in in_accountnum char(16),
	in in_text varchar(10)
)
begin
	call pro_update_balance_locking(in_accountbalance,in_accountnum,in_text);
end $
delimiter ;



-- 통계 조회를 위해서 미리 넣어두는 데이터

insert into cust_DW_audit values("입금", "김서형", "293133-11-000001", 100, 100, now());
insert into cust_DW_audit values("출금", "김서형", "293133-11-000001", 100, 0, now());

#bankbook -- card 
#카드 잔액->통장 잔액
drop procedure if exists change_bankbalance;
delimiter !
create procedure change_bankbalance(
	in in_custcode varchar(4),
	in in_cardbalance bigint,
	in in_accountnum char(16)
)
begin
	update bankbook set accountbalance = in_cardbalance where custcode = in_custcode and accountnum = in_accountnum;
end!
delimiter ;

## 통장잔액 -> 카드 잔액
drop procedure if exists change_cardbalance;

delimiter !
create procedure change_cardbalance(
	in in_custname varchar(20),
	in in_accountbalance bigint,
	in in_accountnum char(16)
)
begin
	update card set cardbalance = in_accountbalance where custcode = (select custcode from customer where custname = in_custname) and accountnum = in_accountnum;
end!
delimiter ;

## 통장 추가했을 때 실적 테이블
drop trigger if exists tri_insert_bankbook_performance;
delimiter $
create trigger tri_insert_bankbook_performance
after insert on bankbook
for each row 
begin 
	insert into performance values(new.accountplancode,new.empcode,new.custcode);
end $
delimiter ;

##통장이 해지계좌로 전환될 때 실적 테이블에도 삭제
drop trigger if exists tri_delete_bankbook_performance;
delimiter $
create trigger tri_delete_bankbook_performance
after update on bankbook
for each row 
begin
	if(new.accountTermination=1) then 
		delete from performance where plancode = old.accountplancode and empcode = old.empcode and custcode = old.custcode;
	end if;
end $
delimiter ;

##카드 추가할 때 실적 테이블 추가 
drop trigger if exists tri_insert_card_performance;
delimiter $
create trigger tri_insert_card_performance
after insert on card
for each row 
begin 
	insert into performance values(new.plancode,new.empcode,new.custcode);
end $
delimiter ;

##카드 삭제할 때 실적 테이블에서 삭제 
drop trigger if exists tri_delete_card_performance;
delimiter $
create trigger tri_delete_card_performance
before delete on card
for each row 
begin 
	delete from performance where plancode = old.plancode and empcode = old.empcode and custcode = old.custcode;
end $
delimiter ;

##대출 추가할 때 실적 테이블 추가 
drop trigger if exists tri_insert_loan_performance;
delimiter $
create trigger tri_insert_loan_performance
after insert on loan
for each row 
begin 
	insert into performance values(new.loanplancode,new.empcode,new.custcode);
end $
delimiter ;

##대출이 상환 완료로 전환될 때 실적 테이블에도 삭제
drop trigger if exists tri_delete_loan_performance;
delimiter $
create trigger tri_delete_loan_performance
after update on loan
for each row 
begin
	if (new.loanExpired = 1) then
		delete from performance where plancode = old.loanplancode and empcode = old.empcode and custcode = old.custcode;
	end if;
end $
delimiter ;