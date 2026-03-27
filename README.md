# Health Insurance Management System

## 📌 Overview
This project demonstrates the design of a health insurance management system focusing on policy management and claims processing.

The goal of the project is to showcase system analysis skills, including requirements definition, business process modeling, API design, and database structure.

---

## 🧠 Project Scope
The system supports the following core features:

- Management of insurance policies
- Submission and processing of insurance claims
- Claim validation and review workflow
- Claim approval and rejection handling

---

## 👥 Actors
- **Insured Person** – views policies and claim status  
- **Healthcare Provider** – submits claims  
- **Claims Specialist** – reviews and approves/rejects claims  
- **System** – validates data and processes requests  

---

## 🔄 Business Process (BPMN)
The claim processing flow includes:

1. Claim submission by provider  
2. Validation by the system  
3. Review by claims specialist  
4. Decision (approve or reject)  

📂 See: `docs/bpmn/claim-process-bpmn.png`

---

## 📊 UML Use Case Diagram
The system interactions between actors and core functionalities are modeled using UML.

📂 See: `docs/uml/use-case-diagram.png`

---

## 🗄 Database Design
The database schema includes the following main entities:

- `insured_persons`
- `providers`
- `policies`
- `claims`

Relationships:
- A policy belongs to an insured person  
- A claim is linked to a policy and provider  

📂 See: `database/schema.sql`

---

## 🔌 API Design
REST API is designed using OpenAPI (Swagger).

Key operations:
- Retrieve policies
- Submit claims
- Retrieve claims
- Update claim status

📂 See: `api/rest-api-health-system.yaml`

---

## 🛠 Technologies & Concepts
- REST API design (OpenAPI 3.0)
- SQL database modeling
- UML (Use Case Diagram)
- BPMN (Business Process Modeling)
- Agile-oriented documentation approach

---

## 📈 What This Project Demonstrates
- Understanding of business requirements in insurance domain  
- Ability to model business processes (BPMN)  
- System interaction modeling (UML)  
- API contract design  
- Database schema design  
- Structured technical documentation  

---

## 🚀 Notes
This project is designed as a portfolio example to demonstrate system analysis and design skills rather than a production-ready application.
