CREATE TABLE schedule
(
  meetingTime DATE NOT NULL,
  PRIMARY KEY (meetingTime)
);

CREATE TABLE client
(
  clientID NUMERIC(9) NOT NULL,
  clientName VARCHAR(20) NOT NULL,
  phoneNr VARCHAR NOT NULL,
  Adress VARCHAR(25) NOT NULL,
  meetingTime DATE NOT NULL,
  PRIMARY KEY (clientID, meetingTime),
  FOREIGN KEY (meetingTime) REFERENCES schedule(meetingTime)
);

CREATE TABLE city
(
  cityName VARCHAR(20) NOT NULL,
  clientID NUMERIC(9) NOT NULL,
  meetingTime DATE NOT NULL,
  PRIMARY KEY (cityName),
  FOREIGN KEY (clientID, meetingTime) REFERENCES client(clientID, meetingTime)
);

CREATE TABLE agent
(
  agentID NUMERIC(9) NOT NULL,
  agentName VARCHAR(20) NOT NULL,
  Rating NUMERIC(2) NOT NULL,
  HireYear NUMERIC(4) NOT NULL,
  bossID NUMERIC(9) NOT NULL,
  salary FLOAT NOT NULL,
  meetingTime DATE NOT NULL,
  clientID NUMERIC(9) NOT NULL,
  meetingTime DATE NOT NULL,
  PRIMARY KEY (agentID, meetingTime),
  FOREIGN KEY (meetingTime) REFERENCES schedule(meetingTime),
  FOREIGN KEY (clientID, meetingTime) REFERENCES client(clientID, meetingTime)
);

CREATE TABLE area
(
  areaId NUMERIC(3) NOT NULL,
  areaName VARCHAR(20) NOT NULL,
  cityName VARCHAR(20) NOT NULL,
  agentID NUMERIC(9) NOT NULL,
  meetingTime DATE NOT NULL,
  PRIMARY KEY (areaId),
  FOREIGN KEY (cityName) REFERENCES city(cityName),
  FOREIGN KEY (agentID, meetingTime) REFERENCES agent(agentID, meetingTime)
);