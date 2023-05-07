--BASIC LOOP
--SINTAXA:
-- LOOP
-- Sn;
-- END LOOP;


--EXEMPLU
DECLARE
    x number := 10;
BEGIN
  LOOP
    dbms_output.put_line(x);
    x := x+10;
  IF (x>50) THEN   -- sau mai usor, inlocuirea IF-ului cu: exit WHEN (x>50)
  exit;            -- CONDITIA ((EXIT WHEN))
  END IF;
  END LOOP;
    dbms_output.put_line('Dupa exit: ' || x);
END;
/


-- WHILE LOOP
--SINTAXA
-- WHILE CONDITIE LOOP
--Sn;
--END LOOP;


--EXEMPLU
DECLARE
    x number := 10;
BEGIN
  WHILE (x<60) LOOP
    dbms_output.put_line(x);
    x := x+10;
  END LOOP;
END;
/


--FOR LOOP
--SINTAXA:
--FOR CONTOR IN VALOARE_INITIALA .. VALOARE FINALA LOOP
--Sn;
--END LOOP;


--EXEMPLU
DECLARE
    x number;
BEGIN                        --EXISTA SI INAPOI (REVERSE)
  FOR x in 10 .. 50 LOOP     -- FOR x IN REVERSE 10..50 LOOP
    dbms_output.put_line(x); --ASA MERGE INAPOI
  END LOOP;
END;
/


--NESTED LOOPS
--NESTED BASIC LOOP
--SINTAXA:
--LOOP
--S1;
--LOOP
--S2;
--END LOOP;
--END LOOP;


--NESTED FOR LOOP
--SINTAXA:
--FOR CONTOR1 IN VALOARE_INITIALA1 .. VALOARE_FINALA1 LOOP
--S1;
--FOR CONTOR2 IN VALOARE_INITIALA2 .. VALOARE_FINALA2 LOOP
--S2;
--END LOOP;
--END LOOP;


--NESTED WHILE LOOP
--SINTAXA:
--WHILE CONDITIE1 LOOP
--S1;
--WHILE CONDITIE2 LOOP
--S2;
--END LOOP;
--END LOOP;


--IN AFARA DE EXIT, MAI EXISTA SI CONTINUE 
--SE PUN DEOBIECI INTR-UN WHILE LOOP-IF INTERIOR
--GOTO SINTAXA:
--GOTO LABEL;
-- <<LABEL>>
--Sn;



