CREATE DATABASE java_poll;

SELECT DATABASE java_poll;

CREATE TABLE voter (id INT AUTO_INCREMENT PRIMARY KEY, 
name VARCHAR(100) NOT NULL, 
vote VARCHAR(45), 
vote_date DATETIME DEFAULT CURRENT_TIMESTAMP) 
ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE question (id INT AUTO_INCREMENT PRIMARY KEY,
question TEXT,
options TEXT,
answer_required BOOLEAN, 
number_options INT NOT NULL,
votes INT,
question_voters INT,
CONSTRAINT fk_question_voters
	FOREIGN KEY (question_voters) REFERENCES voter (id)
	ON DELETE RESTRICT 
	ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE poll(
id INT AUTO_INCREMENT PRIMARY KEY, 
poll_date DATE,
close BOOLEAN,
poll_timeout DATETIME,
public BOOLEAN,
last_vote_date DATE NOT NULL,
questions_id INT,
poll_voters INT,
CONSTRAINT fk_questions
	FOREIGN KEY (questions_id) REFERENCES question (id)
	ON DELETE RESTRICT
    	ON UPDATE CASCADE,
CONSTRAINT fk_poll_voters
	FOREIGN KEY (poll_voters) REFERENCES question (question_voters)
	ON DELETE RESTRICT
    	ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
use java_poll;
CREATE USER 'teppo' IDENTIFIED BY 'kissa123'
GRANT ALL privileges ON `java_poll`.* TO 'teppo';

SELECT DATABASE spring;
CREATE TABLE `EMP_TBL` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `telephone` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;


use spring;
GRANT ALL privileges ON `spring`.* TO 'teppo';
