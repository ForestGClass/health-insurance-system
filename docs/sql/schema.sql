CREATE TABLE insured_persons (
    insured_person_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    date_of_birth DATE NOT NULL,
    personal_id_number VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(150),
    phone VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE providers (
    provider_id INT PRIMARY KEY AUTO_INCREMENT,
    provider_name VARCHAR(200) NOT NULL,
    provider_type VARCHAR(100),
    registration_number VARCHAR(100) NOT NULL UNIQUE,
    address_line VARCHAR(255),
    city VARCHAR(100),
    country VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE policies (
    policy_id INT PRIMARY KEY AUTO_INCREMENT,
    policy_number VARCHAR(100) NOT NULL UNIQUE,
    insured_person_id INT NOT NULL,
    policy_type VARCHAR(100) NOT NULL,
    coverage_details TEXT,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    status VARCHAR(50) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_policies_insured_person
        FOREIGN KEY (insured_person_id) REFERENCES insured_persons(insured_person_id)
);

CREATE TABLE claims (
    claim_id INT PRIMARY KEY AUTO_INCREMENT,
    claim_number VARCHAR(100) NOT NULL UNIQUE,
    policy_id INT NOT NULL,
    provider_id INT NOT NULL,
    claim_date DATE NOT NULL,
    service_date DATE NOT NULL,
    service_description TEXT NOT NULL,
    claimed_amount DECIMAL(12,2) NOT NULL,
    status VARCHAR(50) NOT NULL,
    rejection_reason TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_claims_policy
        FOREIGN KEY (policy_id) REFERENCES policies(policy_id),
    CONSTRAINT fk_claims_provider
        FOREIGN KEY (provider_id) REFERENCES providers(provider_id)
);
