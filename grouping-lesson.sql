SELECT 
    ps.Hospital,
    ps.Ward,
    COUNT(*) AS NumberofPatients, 
    SUM(ps.Tariff)AS TotalTariff
FROM PatientStay ps
GROUP BY ps.Hospital, ps.Ward