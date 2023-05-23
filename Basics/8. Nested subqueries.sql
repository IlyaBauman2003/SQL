SELECT DISTINCT StudentPatronymic FROM Students
WHERE AverageMark = 4 AND StudentPassportNumber IN
(SELECT StudentPassportNumber FROM Students WHERE StudentPassportNumber > 444444);
