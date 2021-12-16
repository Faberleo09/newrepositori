CREATE TABLE LIBRARY(
    ID NUMBER NOT NULL,
    TARGET VARCHAR2(20) NULL,
    CAPACITY NUMBER NULL,
    CATEGORY_ID NUMBER  NULL,
    NAME VARCHAR2(400) NULL
);

SELECT * FROM LIBRARY

BEGIN
    INSERT INTO LIBRARY (ID, TARGET, CAPACITY, CATEGORY_ID, NAME) VALUES (:id,:target,:capacity,:category_id,:name);
    :status_code:=201;
END;

BEGIN
    UPDATE LIBRARY SET TARGET=:target, CAPACITY=:capacity, CATEGORY_ID=:category_id, NAME=:name where ID=:id;
    :status_code:=201;
END;

BEGIN
    DELETE FROM LIBRARY WHERE ID=:id;
    :status_code:=204;
END;