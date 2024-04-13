USE mysql;

CREATE DATABASE IF NOT EXISTS db;

-- -- localhost 에서만 접속 가능한 계정 생성
-- CREATE USER 'mysql'@'localhost' IDENTIFIED BY 'mysql';
-- GRANT ALL PRIVILEGES ON *.* TO 'mysql'@'localhost';
-- FLUSH PRIVILEGES;

-- 모든 DB, 테이블에 접속 가능한 계정 생성
CREATE USER IF NOT EXISTS 'mysql'@'%' IDENTIFIED BY 'mysql';
GRANT ALL PRIVILEGES ON *.* TO 'mysql'@'%';
FLUSH PRIVILEGES;


-- -- 추가 계정 생성 (예: sa)
-- CREATE USER 'sa'@'%' IDENTIFIED BY 'password';
-- GRANT ALL PRIVILEGES ON *.* TO 'sa'@'%';
-- FLUSH PRIVILEGES;
