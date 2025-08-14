-- Q1
CREATE TABLE `people`(
 `department_id` INT unsigned NOT NULL auto_increment PRIMARY KEY,
 `name` VARCHAR(20) NOT NULL,
 `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
 `password` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Q2
AlTER TABLE people ADD department_id INT unsigned AFTER email:

-- Q3
INSERT INTO departments (name) 
VALUES
('営業'),
('開発'),
('経理'),
('人事'),
('情報システム');


INSERT INTO people (name,email,deapertment_id,age,gender)
VALUES
('山田','yamada@gizumo.jp',1,11,2),
('佐藤','sato@gizumo.jp',1,22,1),
('加藤','kato@gizumo.jp',1,39,2),
('川口','kawaguthi@gizumo.jp',2,47,1),
('吉田','yoshida@gizumo.jp',2,53,2),
('山口','ymaguchi@gizumo.jp',2,66,1),
('中村','nakamura@gizumo.jp',2,78,2),
('木村','kimura@gizumo.jp',3,80,1),
('本田','honda@gizumo.jp',4,80,1),
('村上','murakami@gizumo.jp',5,9,2);

INSERT INTO reports (person_id,content)
VALUES
(7,'あ行を勉強しました'),
(8,'か行を勉強しました'),
(9,'さ行を勉強しました'),
(10,'た行を勉強しました'),
(11,'な行を勉強しました'),
(12,'は行を勉強しました'),
(13,'ま行を勉強しました'),
(14,'や行を勉強しました'),
(15,'ら行を勉強しました'),
(16,'わ行を勉強しました');

-- Q4
UPDATE  people SET department_id = 1 WHERE person_id = 1;
UPDATE  people SET department_id = 1 WHERE person_id = 2;
UPDATE  people SET department_id = 2 WHERE person_id = 3;
UPDATE  people SET department_id = 3 WHERE person_id = 4;
UPDATE  people SET department_id = 4 WHERE person_id = 5;
UPDATE  people SET department_id = 5 WHERE person_id = 6;

-- Q5
SELECT name,age FROM people WHERE gender = 1 ORDER BY age desc;

-- Q6
-- peopleテーブルのdepartment_idが1の人を名前とメールアドレスと年齢を取得しcreated_atの昇順に並び替える

-- Q7
SELECT name FROM people WHERE (age >= 20 AND age < 30 AND gender = 2) or (age >= 40 AND age < 50 AND gender = 1);

-- Q8
SELECT * FROM people p JOIN departments d ON p.department_id = d.department_id WHERE d.department_id = 1 ORDER BY p.age asc;

-- Q9
SELECT avg(p.age) AS average_age FROM people p JOIN departments d ON p.department_id = d.department_id WHERE d.department_id = 2 AND gender = 2;

-- Q10
SELECT DISTINCT p.name,d.name FROM people AS p JOIN departments AS d ON p.department_id = d.department_id JOIN reports AS r ON p.person_id = r.person_id;

-- Q11
SELECT p.name FROM people AS p LEFT JOIN reports AS r ON p.person_id = r.person_id WHERE r.content IS NULL;
