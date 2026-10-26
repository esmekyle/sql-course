/*
Example lesson stub
*/
SELECT		ps.PatientID,
			ps.Hospital,
			ps.Ward,
			DATEADD(WEEK, -2, PS.AdmittedDate) AS ReminderDate,
			DATEADD(MONTH, 3, ps.DischargeDate) AS AppointmentDate,
			ps.AdmittedDate,
			ps.DischargeDate,
			DATEDIFF(DAY, ps.admittedDate, ps.DischargeDate) AS LengthOfStay
FROM		PatientStay AS ps
WHERE		ps.Hospital IN ('Kingston', 'PRUH')
			AND ps.Ward LIKE '%surgery'
			AND ps.AdmittedDate BETWEEN '2024-02-27' AND '2024-02-29'
ORDER BY	ps.AdmittedDate, ps.DischargeDate;


--SELECT DATEADD(MONTH, 2, '2026-10-26') AS TestValue