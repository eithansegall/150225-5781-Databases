CREATE TABLE Threat
(
  t_id INT NOT NULL,
  severity INT NOT NULL,
  immediacy INT NOT NULL,
  enemy VARCHAR(20) NOT NULL,
  PRIMARY KEY (t_id)
);

CREATE TABLE Operation
(
  op_id INT NOT NULL,
  exe_unit VARCHAR(20) NOT NULL,
  op_name VARCHAR(20) NOT NULL,
  budjet INT NOT NULL,
  t_id INT NOT NULL,
  PRIMARY KEY (op_id),
  FOREIGN KEY (t_id) REFERENCES Threat(t_id)
);

CREATE TABLE Special_Tool
(
  st_id INT NOT NULL,
  price INT NOT NULL,
  type VARCHAR(20) NOT NULL,
  st_name VARCHAR(20) NOT NULL,
  PRIMARY KEY (st_id)
);

CREATE TABLE Using
(
  op_id INT NOT NULL,
  st_id INT NOT NULL,
  PRIMARY KEY (op_id, st_id),
  FOREIGN KEY (op_id) REFERENCES Operation(op_id),
  FOREIGN KEY (st_id) REFERENCES Special_Tool(st_id)
);