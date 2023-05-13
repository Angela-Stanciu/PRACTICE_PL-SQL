--PROCEDURI
-- UN SUBPROGRAM POATE FI CREAT LA NIVEL DE SCHEMA, INTR-UN PACKAGE SAU INTR-UN BLOC PL/SQL
--PL/SQL OFERA DOUA TIPURI DE PROGRAME: FUNCTII (RETURNEAZA O SINGURA VALOARE) SI PROCEDURI (EXECUTA O ACTIUNE);
--SINTAXA CREARII UNEI PROCEDURI:
/*--CREATE [OR REPLACE] PROCEDURE NUME [(NUME_PARAMETRII [IN|OUT|IN OUT] TIP [...])]
--{IS|AS}
--BEGIN
--<PROCEDURE_BODY>
--END PROCEDURE_NAME;*/
--O PROCEDURA POATE FI CHEMATA FOLOSIND 'EXECUTE' SAU INTR-UN BLOC PL/SQL
--STERGEREA UNEI PROCEDURI: SE FOLOSESTE 'DROP PROCEDURE NUME';


--EXEMPLU 1
CREATE OR REPLACE PROCEDURE procedura
  AS
BEGIN
    dbms_output.put_line('HELLO WORLD.');
END;
/

  EXECUTE procedura;

  DROP PROCEDURE procedura;


--EXEMPLU 2 
--CREAREA UNEI PROCEDURI SEPARATA DE BLOCUL PL/SQL
--LA NIVEL DE SCHEMA
CREATE OR REPLACE PROCEDURE gaseste_minimul (x IN number, y IN number, z OUT number) AS
BEGIN
  IF(x>y) THEN
    z:=y;
  ELSE
    z:=x;
  END IF;
END;
/
--
DECLARE
    a number;
    b number;
    c number;
BEGIN
    a:= 20;
    b:=30;
    gaseste_minimul(a,b,c);
    dbms_output.put_line(c);
END;
/
--
  DROP PROCEDURE gaseste_minimul;


--EXEMPLUL 3
--CAND PROCEDURA ESTE CREATA IN INTERIORUL BLOCULUI PL/SQL
DECLARE
    a number;
  PROCEDURE numar_la_patrat(x IN OUT number) IS
  BEGIN
    x:=x*x;
  END;
BEGIN
    a:=7;
    numar_la_patrat(a);
    dbms_output.put_line(a);
END;
/


--FUNCTII
--SINTAXA CREARII UNEI FUNCTII:
/*--CREATE OR REPLACE FUNCTION NUME [(NUME_PARAMETRII [IN|OUT|IN OUT] TIP [...])]
--RETURN TIP_DATA
--{IS|AS}
--BEGIN
--<FUNCTION_BODY>
--END FUNCTION_NAME;*/


--EXEMPLU 1 
--CREAREA UNEI FUNCTII SEPARATA DE BLOCUL PL/SQL
--LA NIVEL DE SCHEMA
CREATE OR REPLACE FUNCTION suma(x IN number, y IN number)
RETURN number AS
    z number;
BEGIN
    z:=x+y;
RETURN z;
END;
/
--
DECLARE
    z number;
BEGIN
    z:=suma(11,22);
    dbms_output.put_line(z);
END;
/
--
DROP FUNCTION suma;


--EXEMPLUL 2
--CAND FUNCTIA ESTE CREATA IN INTERIORUL BLOCULUI PL/SQL
DECLARE
    a number;
    b number;
    c number;
FUNCTION maxim(x IN number, y IN number)
RETURN number IS
    z number;
BEGIN
  IF (x>y) THEN
    z:=x;
  ELSE
    z:=y;
  END IF;
  RETURN z;
END;
BEGIN
    a:=23;
    b:=45;
    c:=maxim(a,b);
    dbms_output.put_line(c);
END;
/


--FUNCTIE RECURSIVA
DECLARE
    n number;
    rezultat number;
FUNCTION factorial(x IN number)
RETURN number IS
    fact number;
BEGIN
  IF (x=0) THEN
    fact := 1;
  ELSE
    fact := x*factorial(x-1);
  END IF;
RETURN fact;
END;
BEGIN
    n := 6;
    rezultat := factorial(n); 
	dbms_output.put_line(rezultat);
END;
/


