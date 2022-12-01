SELECT * FROM animal WHERE enclosureid = 1;
--SELECT * FROM assignment INNER JOIN staff ON assignment.id = assignment.staffid;
SELECT * FROM staff LEFT JOIN assignment ON staff.id = assignment.staffid WHERE assignment.enclosureid = 1;