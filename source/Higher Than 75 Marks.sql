SELECT NAME
FROM STUDENTS
WHERE MARKS > 75
ORDER BY SUBSTRING(NAME FROM LENGTH(NAME) - 2 FOR 3), ID ASC;