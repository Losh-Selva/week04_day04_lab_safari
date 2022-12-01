
DROP TABLE animal;
DROP TABLE assignment;
DROP TABLE enclosure;
DROP TABLE staff;


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
    staffid INT REFERENCES staff(id),
    enclosureid INT REFERENCES enclosure(id),
    day VARCHAR (255)
);

CREATE TABLE animal(
    name VARCHAR(255),
    type VARCHAR(255),
    age INT,
    enclosureid INT REFERENCES enclosure(id)
);

--Create Staff

INSERT INTO staff (name, employeeNumber) VALUES ('Zsolt', 345);
INSERT INTO staff (name, employeeNumber) VALUES ('Anna', 346);
INSERT INTO staff (name, employeeNumber) VALUES ('Eoan', 347);
INSERT INTO staff (name, employeeNumber) VALUES ('Richard', 348);
INSERT INTO staff (name, employeeNumber) VALUES ('Ed', 349);
INSERT INTO staff (name, employeeNumber) VALUES ('Colin', 350);

-- Create enclosure

INSERT INTO enclosure (name, capacity, closedForMainenance) VALUES ('Bird enclosure', 30, false);
INSERT INTO enclosure (name, capacity, closedForMainenance) VALUES ('Elephant Enclosure', 7, false);
INSERT INTO enclosure (name, capacity, closedForMainenance) VALUES ('Tiger enclosure', 4, true);
INSERT INTO enclosure (name, capacity, closedForMainenance) VALUES ('Lion enclosure', 6, false);
INSERT INTO enclosure (name, capacity, closedForMainenance) VALUES ('Meerkat enclosure', 100, true);
