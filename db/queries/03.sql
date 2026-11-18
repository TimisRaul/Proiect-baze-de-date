SELECT c.Nume, c.Prenume_Firma, p.Nr_Polita, p.Stare 
FROM CLIENT c 
JOIN POLITA p ON c.ID_Client = p.ID_Client;