SELECT c.ID_Comision, p.Nr_Polita, c.Suma_Comision, c.Stare_Plata 
FROM COMISION c
JOIN POLITA p ON c.ID_Polita = p.ID_Polita;