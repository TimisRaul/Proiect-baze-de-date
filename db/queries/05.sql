SELECT a.Nume, a.Prenume, COUNT(p.ID_Polita) AS Total_Polite 
FROM AGENT a
LEFT JOIN POLITA p ON a.ID_Agent = p.ID_Agent
GROUP BY a.ID_Agent, a.Nume, a.Prenume;