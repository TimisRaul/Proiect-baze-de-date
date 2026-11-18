SELECT e.Nume, e.Specializare, COUNT(d.ID_Dauna) AS Total_Dosare 
FROM EXPERT e
LEFT JOIN DOSAR_DAUNA d ON e.ID_Expert = d.ID_Expert
GROUP BY e.ID_Expert, e.Nume, e.Specializare;