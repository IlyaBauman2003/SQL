CREATE TABLE Teachers (
    TeacherId         INT					IDENTITY(1,1)			NOT NULL,
    TeacherSurname    NVARCHAR (50)									NOT NULL,
    TeacherName       NVARCHAR (50)									NOT NULL,
    TeacherPatronymic NVARCHAR (50)									NULL,
	GroupId           INT                                           NULL,
    DepartamentId     NVARCHAR (50)									NOT NULL,
	PRIMARY KEY (TeacherId) 
);

CREATE TABLE Students (
    StudentId               INT				IDENTITY(1,1)           NOT NULL,
    StudentSurname          NVARCHAR (50)							NOT NULL,
    StudentName             NVARCHAR (50)							NOT NULL,
    StudentPatronymic       NVARCHAR (50)							NULL,
    StudentPassportSeries   INT										NOT NULL,
    StudentPassportNumber   INT										NOT NULL,
    StudentBirthday         DATE									NOT NULL,
    StudentNumberRecordBook NVARCHAR (50)							NOT NULL,
    GroupId					INT										NOT NULL,
	AverageMark			    INT										NOT NULL,
    StudentPhone			NVARCHAR (50)							NULL,
    StudentEmail			NVARCHAR (50)							NULL,
    PRIMARY KEY (StudentId)
);

CREATE TABLE Schedule (
    TeacherId       INT			                   NOT NULL,
    TypeOfSubject   INT         			       NOT NULL,
    GroupId         INT							   NOT NULL,
    DisciplineId    INT							   NOT NULL,
    Auditorium      INT							   NOT NULL,
    Time            TIME (7)                       NOT NULL,
    CountOfStudents INT							   NULL,
);

CREATE TABLE Groups (
	GroupId       INT			IDENTITY(1,1)     NOT NULL,
    GroupName     NVARCHAR (50)					  NOT NULL,
    DepartamentId INT					          NOT NULL,
    GroupHeadId   INT       					  NOT NULL,
    PRIMARY KEY (GroupId)
);

CREATE TABLE Disciplines (
    DisciplineId   INT				IDENTITY(1,1)	NOT NULL,
    DisciplineName NVARCHAR (50)					NOT NULL,
	TeacherID      INT				                NOT NULL,
    PRIMARY KEY (DisciplineID)
);

CREATE TABLE Departaments (
    DepartamentId     INT       IDENTITY(1,1)    NOT NULL,
    DepartamentName   NVARCHAR (50) NOT NULL,
    DepartamentHeadId INT           NOT NULL,
    UNIQUE (DepartamentId)
);
