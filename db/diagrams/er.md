# Diagrama Entitate-Relație (ERD) - Sistem de Gestionare Asigurări

Acest fișier descrie arhitectura bazei de date pentru o companie de asigurări.

## 1. Diagrama ER (Mermaid)

```mermaid
erDiagram
    CLIENT ||--o{ POLICY : incheie
    AGENT ||--o{ POLICY : gestioneaza
    POLICY_TYPE ||--o{ POLICY : defineste
    POLICY ||--o{ VEHICLE : "poate asigura"
    POLICY ||--o{ PROPERTY : "poate asigura"
    POLICY ||--o{ PAYMENT : genereaza
    POLICY ||--o{ CLAIM : "poate avea"
    CLAIM ||--o{ CLAIM_DOCUMENT : include

    CLIENT {
        int client_id PK
        string full_name
        string cnp_cui
        string email
        string phone
        string address
    }

    AGENT {
        int agent_id PK
        string full_name
        string license_number
        string email
    }

    POLICY_TYPE {
        int type_id PK
        string name "ex: RCA, CASCO, Locuinta, Sanatate"
        string description
    }

    POLICY {
        int policy_id PK
        string policy_number
        int client_id FK
        int agent_id FK
        int type_id FK
        date start_date
        date end_date
        decimal total_premium "Suma de plata"
        string status "ex: Active, Expired, Cancelled"
    }

    VEHICLE {
        int vehicle_id PK
        int policy_id FK
        string vin "Serie sasiu"
        string license_plate
        string make_model
        int year
    }

    PROPERTY {
        int property_id PK
        int policy_id FK
        string address
        string property_type "ex: Apartament, Casa"
        decimal estimated_value
    }

    PAYMENT {
        int payment_id PK
        int policy_id FK
        decimal amount
        date payment_date
        string payment_method "ex: Card, Transfer, Cash"
        string status "ex: Paid, Pending"
    }

    CLAIM {
        int claim_id PK
        int policy_id FK
        date incident_date
        date report_date
        string description
        decimal estimated_damage
        string status "ex: In Review, Approved, Rejected, Paid"
    }

    CLAIM_DOCUMENT {
        int doc_id PK
        int claim_id FK
        string file_name
        string file_path
        date upload_date
    }
