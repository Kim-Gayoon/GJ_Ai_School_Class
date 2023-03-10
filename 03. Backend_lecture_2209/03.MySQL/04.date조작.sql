/*
 * 날짜/시간 조작
 */

CREATE TABLE dateTable (
	id INT PRIMARY KEY AUTO_INCREMENT,
	dt DATETIME DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO dateTable VALUES (DEFAULT, DEFAULT);
INSERT INTO dateTable (dt) VALUES
	('2022-08-28 17:22:21'), ('2022-02-15 10:22:24'),
	('2022-12-09 22:13:24'), ('2022-07-06 20:15:18');
SELECT * FROM dateTable;

# 2022-09-23 형식
SELECT DATE_FORMAT(dt, '%Y-%m-%d') FROM dateTable;
# 02:28:00 PM 형식
SELECT DATE_FORMAT(dt, '%r') FROM dateTable;
SELECT DATE_FORMAT(dt, '%h:%i:%s %p') FROM dateTable;
# 22-09-23 14:28 형식
SELECT DATE_FORMAT(dt, '%y-%m-%d %H:%i') FROM dateTable;

SELECT NOW(), CURDATE(), CURTIME();
# 날짜 더하기/빼기
SELECT DATE_ADD(NOW(), INTERVAL 40 DAY);
SELECT DATE_SUB(NOW(), INTERVAL 3 MONTH);
# D-day 계산
SELECT TO_DAYS('2022-11-17') - TO_DAYS(NOW());
# 요일 : 1 - 일요일
SELECT DAYOFWEEK(dt) FROM dateTable;
