select s.Name 
from Students s
join Friends f
on s.ID = f.ID
join  Packages p1
on p1.ID = s.ID
join Packages p2
on p2.ID = f.Friend_ID
where p1.Salary < p2.Salary
order by p2.Salary

