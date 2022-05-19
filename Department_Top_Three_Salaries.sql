SELECT Department.name AS Department, Employee.name AS Employee, salary
FROM Employee
JOIN Department ON Employee.departmentId = Department.id 
WHERE 3 > (SELECT COUNT(DISTINCT salary)
            FROM Employee e2
            WHERE e2.salary > Employee.salary AND e2.departmentId = Employee.departmentId);