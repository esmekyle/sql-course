SELECT PatientId,
       Ward,
       h.Hospital,
       h.hospitaltype
FROM   PatientStay AS ps
       INNER JOIN
       DimHospital AS h
       ON ps.Hospital = h.Hospital
WHERE  h.HospitalType = 'teaching';

SELECT   h.reach,
         COUNT(*) AS NumberofPatients
FROM     PatientStay AS PS
         INNER JOIN
         DimHospital AS h
         ON ps.Hospital = h.Hospital
GROUP BY h.Reach;