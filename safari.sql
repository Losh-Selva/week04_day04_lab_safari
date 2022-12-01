
DROP TABLE staff;
DROP TABLE animal;
DROP TABLE enclosure;
DROP TABLE assignment;


CREATE TABLE staff(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    employeeNumber INT
);

CREATE TABLE enclosure(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    capacity INT,
    closedForMainenance BOOLEAN 
);

CREATE TABLE assignment(
    id SERIAL PRIMARY KEY,
  
)