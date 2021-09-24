SET SQL_MODE = '';


CREATE SCHEMA IF NOT EXISTS `bank` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `bank` ;

-- -----------------------------------------------------
-- Table `mydb`.`Department`
-- -----------------------------------------------------
-- CREATE TABLE IF NOT EXISTS `bank`.`department` (
--   `idDepartment` INT NOT NULL,
--   `DepartmentCity` VARCHAR(45) NULL,
--   `CountOfWorkers` INT NULL,
--   PRIMARY KEY (`idDepartment`))
-- ENGINE = InnoDB;


-- -- -----------------------------------------------------
-- -- Table `mydb`.`Client`
-- -- -----------------------------------------------------
-- CREATE TABLE IF NOT EXISTS `bank`.`client` (
--   `idClient` INT NOT NULL,
--   `FirstName` VARCHAR(45) NULL,
--   `LastName` VARCHAR(45) NULL,
--   `Education` VARCHAR(45) NULL,
--   `Passport` VARCHAR(45) NULL,
--   `City` VARCHAR(45) NULL,
--   `Age` VARCHAR(45) NULL,
--   `Department_idDepartment` INT NOT NULL,
--   PRIMARY KEY (`idClient`),
--   INDEX `fk_Client_Department_idx` (`Department_idDepartment` ASC),
--   CONSTRAINT `fk_Client_Department`
--     FOREIGN KEY (`Department_idDepartment`)
--     REFERENCES `bank`.`department` (`idDepartment`)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION)
-- ENGINE = InnoDB;


-- -- -----------------------------------------------------
-- -- Table `mydb`.`Application`
-- -- -----------------------------------------------------
-- CREATE TABLE IF NOT EXISTS `bank`.`application` (
--   `idApplication` INT NOT NULL,
--   `Sum` INT NULL,
--   `CreditState` VARCHAR(45) NULL,
--   `Currency` VARCHAR(45) NULL,
--   `Client_idClient` INT NOT NULL,
--   PRIMARY KEY (`idApplication`),
--   INDEX `fk_Application_Client1_idx` (`Client_idClient` ASC),
--   CONSTRAINT `fk_Application_Client1`
--     FOREIGN KEY (`Client_idClient`)
--     REFERENCES `bank`.`client` (`idClient`)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION)
-- ENGINE = InnoDB;

-- INSERT INTO `bank`.`department` (`idDepartment`, `DepartmentCity`, `CountOfWorkers`) VALUES ('1', 'Kyiv', '12');
-- INSERT INTO `bank`.`department` (`idDepartment`, `DepartmentCity`, `CountOfWorkers`) VALUES ('2', 'Lviv', '15');
-- INSERT INTO `bank`.`department` (`idDepartment`, `DepartmentCity`, `CountOfWorkers`) VALUES ('3', 'Rivne', '8');
-- INSERT INTO `bank`.`department` (`idDepartment`, `DepartmentCity`, `CountOfWorkers`) VALUES ('4', 'Kyiv', '16');
-- INSERT INTO `bank`.`department` (`idDepartment`, `DepartmentCity`, `CountOfWorkers`) VALUES ('5', 'Lviv', '10');

-- INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`, `Department_idDepartment`) VALUES ('1', 'Roman', 'Beregulak', 'high', 'KC249584', 'Lviv', '25', '2');
-- INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`, `Department_idDepartment`) VALUES ('2', 'Mariya', 'Pehnyk', 'high', 'KC350156', 'Stryi', '29', '2');
-- INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`, `Department_idDepartment`) VALUES ('3', 'Olena', 'Fedychkanych', 'middle', 'KC850145', 'Krasne', '19', '1');
-- INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`, `Department_idDepartment`) VALUES ('4', 'Igor', 'Petriv', 'technic', 'KC853952', 'Kyiv', '21', '4');
-- INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`, `Department_idDepartment`) VALUES ('5', 'Volodymyr', 'Gryniv', 'high', 'KC849153', 'Skvyra', '35', '4');
-- INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`, `Department_idDepartment`) VALUES ('6', 'Oleg', 'Fedyshyn', 'high', 'KC012412', 'Lviv', '42', '5');
-- INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`, `Department_idDepartment`) VALUES ('7', 'Taras', 'Sobko', 'middle', 'KC249504', 'Rivne', '20', '3');
-- INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`, `Department_idDepartment`) VALUES ('8', 'Viktor', 'Spas', 'technic', 'KC823412', 'Kyiv', '22', '2');
-- INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`, `Department_idDepartment`) VALUES ('9', 'Julia', 'Mokina', 'technic', 'KC908295', 'Kyiv', '21', '1');
-- INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`, `Department_idDepartment`) VALUES ('10', 'Oksana', 'Indusiva', 'high', 'KC723532', 'Sambir', '32', '1');

-- INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('1', '4000', 'Returned', 'Dollar', '1');
-- INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('2', '5000', 'Not returned', 'Dollar', '4');
-- INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('3', '7500', 'Returned', 'Euro', '6');
-- INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('4', '3200', 'Not returned', 'Gryvnia', '2');
-- INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('5', '3700', 'Returned', 'Gryvnia', '3');
-- INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('6', '4100', 'Returned', 'Dollar', '1');
-- INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('7', '15100', 'Not returned', 'Gryvnia', '9');
-- INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('8', '25600', 'Not returned', 'Dollar', '10');
-- INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('9', '12300', 'Not returned', 'Gryvnia', '8');
-- INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('10', '9700', 'Returned', 'Dollar', '5');
-- INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('11', '9000', 'Not returned', 'Gryvnia', '7');
-- INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('12', '8100', 'Not returned', 'Dollar', '3');
-- INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('13', '4400', 'Not returned', 'Euro', '8');
-- INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('14', '2700', 'Returned', 'Dollar', '10');
-- INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('15', '6600', 'Not returned', 'Euro', '3');


-- 1.Вибрати усіх клієнтів, чиє ім'я має менше ніж 6 символів.
SELECT * FROM client WHERE LENGTH(FirstName) < 6;

-- 2.Вибрати львівські відділення банку.
SELECT  * FROM department WHERE DepartmentCity = 'Lviv';

-- 3.Вибрати клієнтів з вищою освітою та посортувати по прізвищу.
SELECT * FROM client WHERE Education = 'high'
ORDER BY LastName;

-- 4.Виконати сортування у зворотньому порядку над таблицею Заявка і вивести 5 останніх елементів.
SELECT * FROM (SELECT * FROM application ORDER BY idApplication DESC LIMIT 5) t ORDER BY idApplication;

-- 5.Вивести усіх клієнтів, чиє прізвище закінчується на OV чи OVA.
SELECT * FROM client WHERE LastName LIKE '%ov' OR LastName LIKE '%ova';

-- 6.Вивести клієнтів банку, які обслуговуються київськими відділеннями.
SELECT  * FROM client WHERE Department_idDepartment = '1' OR Department_idDepartment = '4';

-- 7.Знайти унікальні імена клієнтів.
SELECT DISTINCT FirstName FROM client;

-- 8.Вивести дані про клієнтів, які мають кредит більше ніж на 5000 тисяч гривень.
SELECT * FROM client
JOIN application ON client.idClient=application.Client_idClient
WHERE CreditState = 'Not returned' AND Sum > 5000;
    
-- 9.Порахувати кількість клієнтів усіх відділень та лише львівських відділень.
SELECT count(Department_idDepartment) AS count_clients_all_dep FROM client;
SELECT count(Department_idDepartment) AS count_clients_lviv FROM client
JOIN department ON client.Department_idDepartment=department.idDepartment
WHERE client.Department_idDepartment = 2 OR client.Department_idDepartment = 5;

-- 10.Знайти кредити, які мають найбільшу суму для кожного клієнта окремо.
SELECT Client_idClient, FirstName, LastName, MAX(Sum)  FROM application
JOIN client cl ON application.Client_idClient = cl.idClient
GROUP BY Client_idClient;

-- 11. Визначити кількість заявок на крдеит для кожного клієнта.
SELECT Client_idClient, FirstName, LastName, COUNT(Client_idClient) FROM application
JOIN client cl ON application.Client_idClient = cl.idClient
GROUP BY Client_idClient;

-- 12. Визначити найбільший та найменший кредити.
SELECT Client_idClient, FirstName, LastName, MAX(Sum) FROM application
JOIN client cl ON application.Client_idClient = cl.idClient;
SELECT Client_idClient, FirstName, LastName, min(Sum) FROM application
JOIN client cl ON application.Client_idClient = cl.idClient;

-- 13. Порахувати кількість кредитів для клієнтів,які мають вищу освіту.
SELECT COUNT(Sum) FROM application
JOIN client cl ON application.Client_idClient = cl.idClient
WHERE Education = 'high';

-- 14. Вивести дані про клієнта, в якого середня сума кредитів найвища.
SELECT FirstName, LastName, (AVG(Sum)) FROM application app
JOIN client cl ON app.Client_idClient = cl.idClient
GROUP BY Client_idClient ORDER BY avg(sum) desc
LIMIT 1;

-- 15. Вивести відділення, яке видало в кредити найбільше грошей
SELECT idDepartment, sum(Sum), DepartmentCity FROM department dep
JOIN client cl ON dep.idDepartment = cl.Department_idDepartment
JOIN application app ON cl.idClient = app.Client_idClient
GROUP BY dep.idDepartment ORDER BY max(Sum) desc
LIMIT 1;

-- 16. Вивести відділення, яке видало найбільший кредит.
SELECT idDepartment, max(Sum), DepartmentCity FROM department dep
JOIN client cl ON dep.idDepartment = cl.Department_idDepartment
JOIN application app ON cl.idClient = app.Client_idClient
GROUP BY dep.idDepartment ORDER BY max(Sum) desc
LIMIT 1;

-- 17. Усім клієнтам, які мають вищу освіту, встановити усі їхні кредити у розмірі 6000 грн.
UPDATE application app JOIN client cl ON app.Client_idClient = cl.idClient
SET Sum = 6000 WHERE cl.Education = 'high';

-- 18. Усіх клієнтів київських відділень пересилити до Києва.
UPDATE client cl JOIN department dep ON cl.Department_idDepartment = dep.idDepartment
SET City = 'Kyiv' WHERE Department_idDepartment = '1' OR Department_idDepartment = '4';

-- 19. Видалити усі кредити, які є повернені.
delete FROM application WHERE CreditState = 'Returned';

-- 20. Видалити кредити клієнтів, в яких друга літера прізвища є голосною.
delete application FROM application
JOIN client cl ON application.Client_idClient = cl.idClient
WHERE substr(cl.LastName,2,1) IN ('a', 'e', 'i', 'o', 'u', 'y');

-- 21.Знайти львівські відділення, які видали кредитів на загальну суму більше ніж 5000
SELECT DepartmentCity, sum FROM application app
JOIN client cl ON app.Client_idClient = cl.idClient
JOIN department dep ON cl.Department_idDepartment = dep.idDepartment
WHERE dep.DepartmentCity = 'Lviv' AND Sum > 5000;

-- 22.Знайти клієнтів, які повністю погасили кредити на суму більше ніж 5000
SELECT FirstName, LastName, sum FROM client
JOIN application app ON client.idClient = app.Client_idClient
WHERE CreditState = 'returned' AND sum >5000;

-- 23.Знайти максимальний неповернений кредит.
SELECT max(Sum) FROM application
WHERE CreditState = 'Not returned';

-- 24.Знайти клієнта, сума кредиту якого найменша
SELECT LastName, FirstName, MIN(Sum) AS minSum
FROM client cl
JOIN application app ON cl.idClient = app.Client_idClient
GROUP BY Client_idClient
ORDER BY min(Sum)
LIMIT 1;

-- 25.Знайти кредити, сума яких більша за середнє значення усіх кредитів
SELECT * FROM application
WHERE Sum > (SELECT avg(Sum) FROM application);

-- 26. Знайти клієнтів, які є з того самого міста, що і клієнт, який взяв найбільшу кількість кредитів
-- SELECT * FROM application app
-- JOIN client cl ON app.Client_idClient = cl.idClient
-- GROUP BY Client_idClient ORDER BY count(Client_idClient) DESC
-- LIMIT 1;

-- 27. Місто клієнта з найбільшою кількістю кредитів
SELECT City FROM client
JOIN application app ON client.idClient=app.Client_idClient
GROUP BY Client_idClient ORDER BY count(Client_idClient) DESC
LIMIT 1;