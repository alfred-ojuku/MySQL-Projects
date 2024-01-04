CREATE USER hr_user IDENTIFIED BY "hr_user";
CREATE USER qa_user IDENTIFIED BY "qa_user";
CREATE USER aftersales_user IDENTIFIED BY "aftersales_user";


SELECT * FROM mysql.user;

USE roam;

SHOW GRANTS FOR hr_user;
SHOW GRANTS FOR qa_user;
SHOW GRANTS FOR aftersales_user;


GRANT SELECT, DELETE, UPDATE, INSERT, EXECUTE ON roam.employees TO hr_user;
GRANT SELECT ON roam.v_employees TO qa_user;
GRANT SELECT ON roam.v_employees TO aftersales_user;
GRANT SELECT ON roam.v_employees TO hr_user;
