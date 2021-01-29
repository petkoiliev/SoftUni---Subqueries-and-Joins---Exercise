
Problem 1:

Select top(5) e.EmployeeID,e.JobTitle,a.AddressId,a.AddressText
FROM Employees AS e
JOIN Addresses AS a 
ON a.AddressID = e.AddressID
ORDER BY a.AddressID ASC


==============================================================================================================
Problem 2:

SELECT TOP(50)
FirstName,LastName,t.Name AS Town,a.AddressText
FROM Employees e
JOIN Addresses a ON a.AddressID=e.AddressID 
JOIN Towns t ON t.TownID = a.TownID
ORDER BY FirstName,LastName

=================================================================================================================
Problem 3:

SELECT EmployeeID,FirstName,LastName,d.Name
FROM Employees e
JOIN Departments d ON d.DepartmentID = e.DepartmentID
WHERE NAME LIKE 'Sales'
ORDER BY EmployeeID


=================================================================================================================
Problem 4:

SELECT TOP(5) EmployeeID,FirstName,Salary,d.Name
FROM Employees e
JOIN Departments d ON d.DepartmentID = e.DepartmentID
WHERE Salary>15000
ORDER BY e.DepartmentID

===============================================================================================================
Problem 5:

SELECT TOP(3) e.EmployeeID,e.FirstName
FROM Employees e
LEFT JOIN EmployeesProjects ep ON ep.EmployeeID = e.EmployeeID
WHERE ep.ProjectID IS NULL
ORDER BY e.EmployeeID

==============================================================================================================================
Problem 6

SELECT FirstName,LastName,HireDate,d.Name AS DeptName
FROM Employees e
JOIN Departments d ON d.DepartmentID=E.DepartmentID
WHERE e.HireDate>'1.1.1999' AND d.Name = 'Sales' OR d.Name='Finance'
ORDER BY HireDate

==================================================================================================================================
Problem 7:

SELECT top(5) e.EmployeeID,FirstName,p.Name
FROM Employees e
JOIN EmployeesProjects ep ON ep.EmployeeID = e.EmployeeID
LEFT JOIN Projects p ON p.ProjectID = ep.ProjectID
WHERE p.EndDate IS NULL
ORDER BY e.EmployeeID

====================================================================================================================================
Problem 8:

SELECT e.EmployeeID,
       e.FirstName,
	   CASE
	   WHEN DATEPART(YEAR,p.StartDate)>=2005 THEN NULL ELSE p.Name
	   END AS ProjectName
FROM Employees e
JOIN EmployeesProjects ep ON ep.EmployeeID = e.EmployeeID
JOIN Projects p ON p.ProjectID = ep.ProjectID
WHERE e.EmployeeID=24  

=======================================================================================================================================
Problem 9:

SELECT e.EmployeeID,
       e.FirstName,
	   e.ManagerID,
	   mng.FirstName AS ManagerName      	     
FROM Employees e
JOIN Employees mng ON mng.EmployeeID = e.ManagerID
WHERE e.ManagerID = 3 OR e.ManagerID=7

============================================================================================================================================
Problem 10:

SELECT top(50)
       e.EmployeeID,
       e.FirstName + ' ' + e.LastName as EmployeeName,
	   mng.FirstName + ' ' + mng.LastName as ManagerName,
	   d.Name as DepartmentName
	   
	   FROM Employees e
	   JOIN Employees mng ON mng.EmployeeID = e.ManagerID
	   JOIN Departments d ON d.DepartmentID = e.DepartmentID
	   ORDER BY e.EmployeeID

====================================================================================================================================================
Problem 11:

SELECT
	   mc.CountryCode,
	   m.MountainRange,
	   p.PeakName,
	   p.Elevation
FROM Peaks p
JOIN Mountains m ON m.Id = p.MountainId
JOIN MountainsCountries mc ON mc.MountainId = m.Id

WHERE mc.CountryCode = 'BG' AND p.Elevation>2835

ORDER BY p.Elevation DESC

========================================================================================================================================================














