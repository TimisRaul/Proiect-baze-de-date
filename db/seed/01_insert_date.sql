INSERT INTO CLIENT (Nume, Prenume_Firma, CNP_CUI, Adresa, Telefon, Email) VALUES 
('Popescu', 'Ion', '1900101223344', 'Str. Florilor, Nr. 10, Cluj-Napoca', '0721111222', 'ion.popescu@email.com'),
('Ionescu SRL', 'SC Ionescu SRL', 'RO12345678', 'Bd. Independentei, Nr. 5, Bucuresti', '0733222111', 'office@ionescusrl.ro');

INSERT INTO AGENT (Nume, Prenume, Cod_Licenta, Telefon, Email, Procent_Comision) VALUES 
('Vasilescu', 'Mihai', 'AG-2026-01', '0744555666', 'mihai.vasilescu@asig.ro', 10.00);

INSERT INTO TIP_ASIGURARE (Denumire, Descriere, Suma_Maxima_Acoperita) VALUES 
('CASCO Auto', 'Asigurare facultativa pentru avarii si furt', 50000.00),
('RCA Auto', 'Asigurare obligatorie de raspundere civila', 100000.00);

INSERT INTO EXPERT (Nume, Prenume, Specializare, Telefon, Email) VALUES 
('Georgescu', 'Radu', 'Daune Auto Materiale', '0755666777', 'radu.georgescu@asig.ro');

INSERT INTO METODA_PLATA (Denumire, Descriere, Necesita_Referinta) VALUES 
('Card Bancar', 'Plata online sau POS', TRUE),
('Ordin de Plata', 'Transfer bancar', TRUE);

INSERT INTO POLITA (Nr_Polita, ID_Client, ID_Agent, ID_Tip, Data_Emiterii, Data_Inceput, Data_Expirarii, Suma_Asigurata, Prima_Asigurare, Stare) VALUES 
('POL-2026-001', 1, 1, 1, '2026-03-01', '2026-03-02', '2027-03-01', 40000.00, 2500.00, 'Activa');