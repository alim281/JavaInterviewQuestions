SELECT *
FROM
  (SELECT MAX(MONTHS*SALARY),
          COUNT(EMPLOYEE_ID)
   FROM EMPLOYEE
   GROUP BY MONTHS*SALARY
   ORDER BY MONTHS*SALARY DESC)
WHERE ROWNUM = 1;