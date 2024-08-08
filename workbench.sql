/*
    CIS 4580
    
    PL/SQL units:
    1. Sequence 
        object; generate number, autonumber sequence; to create unique number ex. Primary key
*/  -- Syntax
    CREATE Sequence sequence_name
        START WITH 1
        INCREMENT BY 1;

    -- To drop a sequence: DROP SEQUENCE sequence_name;

/*  
    2. Triggers
        automatically executed/fired when events occur; 
        response to DML (DELECT, INSERT, or UPDATE), <-- use COMMIT here!
        DDL (CREATE, ALTER, or DROP), 
        database operation (SERVERERROR, LOGON, LOGOFF, STARTUP, or SHUTDOWN) 

        if no Seq/Trig, we will have error msg since it will create null on primary key, but primary key cannot be null
        
*/
    CREATE or REPLACE TRIGGER trig_empno_zihong
        BEFORE INSERT ON emp_zihong FOR EACH ROW 
        BEGIN
            SELECT emp_seq_zihong.nextval INTO :new.empno FROM DUAL; --new.xxx ; xxx must be column name
        END;
        /
/*      
    3.
    insert into emp_zihong (empno,empname,job,salary,depno) values 
(122,'Mary','Staff',6000,10);
insert into emp_zihong (empno,empname,job,salary,depno) values 
(123,'Jack','HR',5000,20);
insert into emp_zihong (empno,empname,job,salary,depno) values 
(124,'David','Front Desk',3600,10);
insert into emp_zihong (empno,empname,job,salary,depno) values 
(125,'Marty','Staff',2900,30);
insert into emp_zihong (empno,empname,job,salary,depno) values 
(126,'Don','Delivery',4600,40);
insert into emp_zihong (empno,empname,job,salary,depno) values 
(127,'Susan','Staff','',10);
insert into emp_zihong (empno,empname,job,salary,depno) values 
(128,'Sara','Staff',6500,50);
insert into emp_zihong (empno,empname,job,salary,depno) values 
(129,'Miyoung','Developer',3200,30);
insert into emp_zihong (empno,empname,job,salary,depno) values 
(130,'Smith','Manager',6800,20);
insert into emp_zihong (empno,empname,job,salary,depno) values 
(131,'Norma','Staff',6250,20);
insert into emp_zihong (empno,empname,job,salary,depno) values 
(132,'Allen','Biller',4300,60);
    4.


*/
