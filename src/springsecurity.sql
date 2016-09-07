--<ScriptOptions statementTerminator=";"/>

CREATE TABLE users (
	username VARCHAR(50) NOT NULL,
	password VARCHAR(50) NOT NULL,
	enabled null NOT NULL,
	PRIMARY KEY (username)
) ENGINE=InnoDB;

CREATE TABLE group_authorities (
	group_id INT NOT NULL,
	authority VARCHAR(50) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE authorities (
	username VARCHAR(50) NOT NULL,
	authority VARCHAR(50) NOT NULL,
	PRIMARY KEY (username,authority)
) ENGINE=InnoDB;

CREATE TABLE group_members (
	id INT NOT NULL,
	username VARCHAR(50) NOT NULL,
	group_id INT,
	PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE groups (
	id INT NOT NULL,
	PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE INDEX group_id ON group_members (group_id ASC);

CREATE INDEX group_id ON group_authorities (group_id ASC);

