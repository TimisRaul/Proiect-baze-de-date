SELECT p.Nr_Polita, c.Nume AS Client, a.Nume AS Agent, t.Denumire AS Tip, p.Prima_Asigurare 
FROM POLITA p
JOIN CLIENT c ON p.ID_Client = c.ID_Client
JOIN AGENT a ON p.ID_Agent = a.ID_Agent
JOIN TIP_ASIGURARE t ON p.ID_Tip = t.ID_Tip;