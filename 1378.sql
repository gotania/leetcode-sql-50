/* https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier */
select unique_id, name  from Employees
 JOIN Employeeuni ON EmployeeUNI .id=Employees.id
