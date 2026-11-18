SELECT i.Stare_Veche, i.Stare_Noua, i.Data_Ora, i.Motiv 
FROM ISTORIC_STATUS_POLITA i
WHERE i.ID_Polita = 1 ORDER BY i.Data_Ora DESC;