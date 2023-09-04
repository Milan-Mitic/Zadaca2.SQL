use SEDCHome;


-- Find all students with FirstName = Antonnio
select * from Student
where FirstName = 'Antonio'

-- Find all students with DateOfBirth greater than '01.01.1999'
select * from Student
where DateOfBirth > '01.01.1999'

-- Find all Students with LastName starting With ‘J’ enrolled in January/1998
select * from Student
where LastName like 'J%' and MONTH(EnrolledDate) = 1 and YEAR(EnrolledDate) = 1998

-- List all Students ordered by FirstName
select * from Student
order by FirstName

-- List all Teacher Last Names and Student Last Names in single result set. Remove duplicates
select Teacher.LastName
from Teacher
union
select Student.LastName
from Student

-- Create Foreign key constraints from diagram or with script
create table Customers(
CustomerID int primary key,
CustomerName nvarchar(100)
);
create table Orders(
OrderID int primary key,
OrderDate date,
CustomerID int,
foreign key(CustomerID) references Customers(CustomerID)
);

-- List all possible combinations of Courses names and AchievementType names that can be passed by student 
select Course.Name, AchievementType.Name 
from Course
cross join AchievementType

-- List all Teachers without exam Grade
select * from Teacher
left join Grade 
on TeacherID = Teacher.ID
where Grade is null











