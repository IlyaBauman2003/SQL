INSERT INTO Teachers(TeacherSurname, TeacherName, TeacherPatronymic, DepartamentId) 
VALUES (N'Пчелинцева', N'Наталья', N'Ибрагимовна', 14);

INSERT INTO Students(StudentSurname, StudentName, StudentPatronymic, StudentPassportSeries, StudentPassportNumber, StudentBirthday, StudentNumberRecordBook, GroupId, StudentPhone, StudentEmail, AverageMark) 
VALUES (N'Передереев', N'Илья', N'Николаевич', 1414, 111111, '21/03/2003', N'11ДЛ199', 10, N'', N'', 4);

INSERT INTO Schedule(TeacherId, TypeOfSubject, GroupId, DisciplineID, Auditorium, CountOfStudents, Time) 
VALUES (1, 1, 14, 0, 400, 32, '14:00:32');

INSERT INTO Groups(GroupName, DepartamentId, GroupHeadId) 
VALUES (N'ИУК4-42Б', 14, 2); 

INSERT INTO Disciplines(DisciplineName, TeacherID) 
VALUES (N'ТиСД', 1);

INSERT INTO Departaments(DepartamentName, DepartamentHeadId) 
VALUES (N'ИУК4', 2);
