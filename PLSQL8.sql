--RECORDS
--RECORD-UL ESTE SIMILAR CU UN RAND AL UNUI TABEL(INREGISTRARE);
--ESTE O UNITATE LOGICA CE CONTINE MAI MULTE ATRIBUTE;
--EXISTA 3 TIPURI DE RECORDS: 
--1) INREGISTRARI PE BAZA DE TABEL;
--2) INREGISTRARI BAZATE PE CURSOR;
--3) INREGISTRARI DEFINITE DE UTILIZATOR;


--OBS: PUTEM FOLOSI SELECT INTO PENTRU A PRELUA DATELE DIN TABEL;
--EXEMPLU:
SELECT nume, prenume, telefon
INTO record_contact
FROM contact
WHERE id=100;

--OBS: ATRIBUTUL %ROWTYPE CREAZA PRIMELE DOUA TIPURI DE RECORDS - 1) SI 2);



--1) INREGISTRARE PE BAZA DE TABEL:
--EXEMPLU:
DECLARE
    record_client client%ROWTYPE;
BEGIN
  SELECT * INTO record_client
  FROM client
  WHERE id=5;
    dbms_output.put_line(record_client.id || record_client.nume || record_client.adresa);
END;
/


--2) INREGISTRARE BAZATA PE CURSOR:
--EXEMPLU:
DECLARE
  CURSOR cursor_client IS
  SELECT id, nume, adresa
  FROM client;
    record_client client%ROWTYPE;
  BEGIN
  OPEN cursor_client;
  LOOP
  FETCH cursor_client INTO record_client;
  EXIT WHEN cursor_client%NOTFOUND;
    dbms_output.put_line(record_client.id||record_client.nume||record_client.adresa);
  END LOOP;
END;
/


--3) INREGISTRARE DEFINITA DE UTILIZATOR:
--SINTAXA PENTRU DEFINIRE:
--TYPE NUME IS RECORD
--(NUME_CAMP_N TIP_DATA [NOT NULL] [:=DEFAULT EXPRESSION]);
--NUME_INREGISTRARE TIP_DATA;


--EXEMPLU:
DECLARE
  TYPE carte IS RECORD
  (titlu VARCHAR(50),
  autor VARCHAR(50),
  id NUMBER);
  carte1 carte;
BEGIN
  carte1.titlu:='C Programming';
  carte1.autor:='Nuha Ali';
  carte1.id:=6495407;
    dbms_output.put_line(carte1.titlu||carte1.autor||carte1.id);
END;
/
