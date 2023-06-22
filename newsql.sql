CREATE DATABASE `contacts` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `contacts`;

CREATE TABLE `user` (
  `username` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `state` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `contact` (
  `idcontact` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `username` varchar(45) NOT NULL,
  `colegioSecundario` varchar(45) DEFAULT 'none',
  `state` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idcontact`),
  KEY `user_contact_idx` (`username`),
  CONSTRAINT `user_contact` FOREIGN KEY (`username`) REFERENCES `user` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT USER(username, password, email, name, surname, state) VALUES
('user1', '1234', 'user1@gmail.com', 'user1' , 'username1', 1),
('user2', '1234', 'user2@gmail.com', 'user2' , 'username2', 1),
('user3', '1234', 'user3@gmail.com', 'user3' , 'username3', 1),
('user4', '1234', 'user4@gmail.com', 'user4' , 'username4', 1),
('user5', '1234', 'user5@gmail.com', 'user5' , 'username5', 1);

INSERT contact(name, surname, email, username, colegioSecundario, state) VALUES
('juan', 'lucas', 'juan@gmail.com', 'user1' ,'san jose', 1);

INSERT contact(name, surname, email, username, state) VALUES
('tobias', 'esteban', 'tobias@gmail.com', 'user1' , 1);

DELETE FROM contact as c WHERE c.username = 'user1';

select * from contact;







