CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
DECLARE A INT;
SET A = N - 1;
  RETURN (
     SELECT DISTINCT Salary AS getNthHighestSalary
      FROM Employee
      ORDER BY Salary DESC
      LIMIT 1 OFFSET A
      
  );
END