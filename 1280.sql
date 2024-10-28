/* https://leetcode.com/problems/students-and-examinations */
select  * --student_id.Examinations,  student_name.Students, subject_name.Examinations --,  attended_exams
from Examinations
right join Students on Students.Student_id = Examinations.student_id
--group by student_name