CREATE TABLE client (
    client_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(150) NOT NULL,
    cnp_cui VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100),
    phone VARCHAR(20),
    address TEXT
);
CREATE TABLE agent (
    agent_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(150) NOT NULL,
    license_number VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100)
);
CREATE TABLE policy_type (
    type_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description TEXT
);
CREATE TABLE policy (
    policy_id INT AUTO_INCREMENT PRIMARY KEY,
    policy_number VARCHAR(50) UNIQUE NOT NULL,
    client_id INT NOT NULL,
    agent_id INT NOT NULL,
    type_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_premium DECIMAL(10, 2) NOT NULL,
    status VARCHAR(30) DEFAULT 'Active',
    FOREIGN KEY (client_id) REFERENCES client(client_id) ON DELETE CASCADE,
    FOREIGN KEY (agent_id) REFERENCES agent(agent_id) ON DELETE RESTRICT,
    FOREIGN KEY (type_id) REFERENCES policy_type(type_id) ON DELETE RESTRICT
);
CREATE TABLE vehicle (
    vehicle_id INT AUTO_INCREMENT PRIMARY KEY,
    policy_id INT NOT NULL,
    vin VARCHAR(50) UNIQUE NOT NULL,
    license_plate VARCHAR(20) NOT NULL,
    make_model VARCHAR(100) NOT NULL,
    year INT,
    FOREIGN KEY (policy_id) REFERENCES policy(policy_id) ON DELETE CASCADE
);
CREATE TABLE property (
    property_id INT AUTO_INCREMENT PRIMARY KEY,
    policy_id INT NOT NULL,
    address TEXT NOT NULL,
    property_type VARCHAR(50),
    estimated_value DECIMAL(12, 2),
    FOREIGN KEY (policy_id) REFERENCES policy(policy_id) ON DELETE CASCADE
);
CREATE TABLE payment (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    policy_id INT NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    payment_date DATE NOT NULL,
    payment_method VARCHAR(30),
    status VARCHAR(30) DEFAULT 'Pending',
    FOREIGN KEY (policy_id) REFERENCES policy(policy_id) ON DELETE CASCADE
);
CREATE TABLE claim (
    claim_id INT AUTO_INCREMENT PRIMARY KEY,
    policy_id INT NOT NULL,
    incident_date DATE NOT NULL,
    report_date DATE NOT NULL,
    description TEXT,
    estimated_damage DECIMAL(12, 2),
    status VARCHAR(30) DEFAULT 'In Review',
    FOREIGN KEY (policy_id) REFERENCES policy(policy_id) ON DELETE CASCADE
);
CREATE TABLE claim_document (
    doc_id INT AUTO_INCREMENT PRIMARY KEY,
    claim_id INT NOT NULL,
    file_name VARCHAR(255) NOT NULL,
    file_path VARCHAR(500) NOT NULL,
    upload_date DATE NOT NULL,
    FOREIGN KEY (claim_id) REFERENCES claim(claim_id) ON DELETE CASCADE
);
