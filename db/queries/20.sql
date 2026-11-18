SELECT d.ID_Document, d.Nume_Fisier, ds.Stadiu 
FROM DOCUMENT_DAUNA d
JOIN DOSAR_DAUNA ds ON d.ID_Dauna = ds.ID_Dauna
WHERE ds.Stadiu = 'Aprobat';