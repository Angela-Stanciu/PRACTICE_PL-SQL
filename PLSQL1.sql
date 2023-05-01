--use sql plus -- cmd 
-- sqlplus "/ as sysdba"  --comanda
--SET SERVEROUTPUT ON -- comanda pentru a afisa mesajele


--exemplu de bloc anonim
-- Hello world varianta 1
BEGIN
   DBMS_OUTPUT.put_line ('Hello World!');
END;
/

-- Hello world varianta 2
DECLARE 
   message  VARCHAR2(20) := 'Hello, World!'; 
BEGIN 
   dbms_output.put_line(message); 
END; 
/ 


--TIPURI DE DATE
-- Data Types: SCALAR , LARGE OBJECT (LOB), COMPOSITE, REFERENCE
-- SCALAR : NUMERIC, CHARACTER, BOOLEAN, DATETIME


--NUMERIC EXEMPLU
DECLARE 
   num1 INTEGER; --numar natural
   num2 INT;  --numar natural
   num3 SMALLINT; --numar natural
   num4 REAL; --cu virgula
   num5 DOUBLE PRECISION; --cu virgula
   num6 FLOAT; --cu virgula
BEGIN 
   null; 
END; 
/ 


--CHARACTER EXEMPLU
DECLARE 
   char1 CHAR; 
   char2 VARCHAR2(100);  
   char3 LONG; 
   char4 NCHAR; 
   char5 NVARCHAR2(200); 
BEGIN 
   null; 
END; 
/ 


-- BOOLEAN EXEMPLU
DECLARE 
   bol1 BOOLEAN := TRUE;  --trebuie sa fie atribuit cu TRUE/FALSE/NULL
BEGIN 
   null; 
END; 
/ 


-- DATE exemplu
DECLARE
    date1 DATE := '11-OCT-2011'; --trebuie sa fie atribuit cu o data
BEGIN
    null;
END;
/


-- LARGE OBJECT (LOB) : BFILE, BLOB, CLOB;


-- DEFINIREA SI UTILIZAREA PROPRIILOR SUBTIPURI 
--SUBTIP DEFINIT DE UTILIZATOR
 DECLARE
     SUBTYPE string IS VARCHAR2(100);
     mesaj string;
 BEGIN
     mesaj :='Hello World';
     dbms_output.put_line(mesaj);
 END;
 /




