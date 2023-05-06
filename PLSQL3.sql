--NOTA: PL/SQL nu e case-sensitive (UPPER = LOWER CASE);
--IF-THEN
--SINTAXA:
--IF CONDITIE THEN  ((CONDITIE (ESTE BOOLEAN)))
-- S; ((STATEMENT (AFIRMATIE)))
--END IF;


--EXEMPLU 
DECLARE
    a number(2) := 10;
BEGIN
  IF(a<20) THEN
    dbms_output.put_line('Valoarea este mai mica decat 20');
  END IF;
    dbms_output.put_line(a);
END;
/


--IF-THEN-ELSE
--SINTAXA:
-- IF CONDITIE THEN
-- S1;
--  ELSE
-- S2;
-- END IF;


--EXEMPLU
DECLARE
    a number(2) := 10;
BEGIN
  IF (a>20) THEN
    dbms_output.put_line('Valoarea este mai mare de 20');
  ELSE
    dbms_output.put_line('Valoarea este mai mica de 20');
  END IF;
    dbms_output.put_line(a);
END;
/


--IF-THEN-ELSIF
--SINTAXA:
--IF (EXPRESIE BOOLEANA) THEN
--S1;
--ELSIF (EXPRESIE BOOLEANA) THEN
--S2;
--ELSIF (EXPRESIE BOOLEANA) THEN
--S3;
--ELSE
--S4; ((SE EXECUTA DOAR DACA CELELALTE IF-URI NU SUNT ADEVARATE))
--END IF;


--EXEMPLU
DECLARE
    a number(2) := 50;
BEGIN
  IF (a=10) THEN
    dbms_output.put_line('Valoarea este 10');
  ELSIF (a=20) THEN
    dbms_output.put_line('Valoarea este 20');
  ELSIF (a=30) THEN
    dbms_output.put_line('Valoarea este 30');
  ELSE
    dbms_output.put_line('Valoarea este alta');
  END IF;
dbms_output.put_line(a);
END;
/


--NESTED IF-THEN ELSE
--SINTAXA: 
--IF (EXPRESIE BOOLEANA) THEN
-- IF (EXPRESIE BOOLEANA) THEN
--  S1;
-- END IF;
--ELSE
-- S2;
--END IF;


--EXEMPLU
DECLARE
    a number(2) := 40;
    b number(2) := 50;
BEGIN
  IF ( a=40) THEN
  IF(b=50) THEN
    dbms_output.put_line('Valori: 40,50');
  END IF;
  END IF;
    dbms_output.put_line(a || b);
END;
/


-- CASE
--SINTAXA:
--CASE SELECTOR ((SELECTORUL ESTE O VARIABILA))
--WHEN 'VALUE1' THEN S1;
--WHEN 'VALUE2' THEN S2;
--WHEN 'VALUE3' THEN S3;
--...
--ELSE Sn; -- DEFAULT CASE
--END CASE;


--EXEMPLU
DECLARE
    nota number(2) := 10;
BEGIN
  CASE nota
  when '5' then dbms_output.put_line('Nota 5');
  when '7' then dbms_output.put_line('Nota 7');
  when '10' then dbms_output.put_line('Nota 10');
  else dbms_output.put_line('Nu exista nota');
  END CASE;
END;
/


-- SEARCHED CASE
--SINTAXA:
-- CASE
-- WHEN SELECTOR = 'VALUE1' THEN S1;
-- WHEN SELECTOR = 'VALUE2' THEN S2;
-- WHEN SELECTOR = 'VALUE3' THEN S3;
--...
-- ELSE Sn; --DEFAULT CASE
--END CASE;


--EXEMPLU
DECLARE
    nota number(2) :=10;
BEGIN
  case
  when nota = '5' then dbms_output.put_line('Nota 5');
  when nota = '7' then dbms_output.put_line('Nota 5');
  when nota = '10' then dbms_output.put_line('Nota 10');
  else dbms_output.put_line('Nu exista nota');
  end case;
END;
/