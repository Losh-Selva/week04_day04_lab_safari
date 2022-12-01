--MVP
--SELECT * FROM animal WHERE enclosureid = 1;
--SELECT * FROM staff LEFT JOIN assignment ON staff.id = assignment.staffid WHERE assignment.enclosureid = 1;

--EXTENSION 1
-- SELECT staff.name, staff.id AS staffNumber, assignment.staffid, enclosure.name AS animalEnclosure, closedForMainenance 
-- FROM staff LEFT JOIN assignment ON staff.id = assignment.staffid
-- LEFT JOIN enclosure 
-- ON assignment.enclosureid = enclosure.id 
-- WHERE closedForMainenance = true;

--EXTENSION 2
-- SELECT MAX(animal.age), enclosure.name 
-- FROM animal LEFT JOIN enclosure ON enclosure.id = animal.enclosureid
-- GROUP BY animal.age, enclosure.name
-- LIMIT 1;


-- SELECT COUNT(animal.type), staff.name
-- FROM staff INNER JOIN assignment ON staff.id = assignment.staffid
-- INNER JOIN animal ON assignment.enclosureid = animal.enclosureid
-- -- FROM animal INNER JOIN assignment ON assignment.enclosureid = animal.enclosureid
-- -- INNER JOIN staff ON assignment = assignment.staffid
-- GROUP BY animal.type, staff.name;

--EXTENSION 3
-- SELECT COUNT(DISTINCT animal.type) FROM animal
-- INNER JOIN enclosure
-- ON animal.enclosureid = enclosure.id
-- INNER JOIN assignment
-- ON assignment.enclosureid = enclosure.id
-- WHERE assignment.staffid = 4;

-- --EXTENSION 4
-- SELECT COUNT(DISTINCT assignment.staffid)
-- FROM assignment INNER JOIN enclosure
-- ON assignment.enclosureid = enclosure.id
-- WHERE enclosure.id = 5;

-- EXTENSION 5
SELECT animal.name, enclosure.id
FROM ANIMAL INNER JOIN enclosure
ON animal.enclosureid = enclosure.id
WHERE animal.enclosureid = 3;
