# Use Cases - Health Insurance Management System

## Overview
This document describes the main use cases for the Health Insurance Management System.  
The goal is to capture how different actors interact with the system during policy management and claim processing.

---

## Actors
- Insured Person – a customer who owns an insurance policy
- Healthcare Provider – a medical organization submitting claims
- Claims Specialist – an internal employee reviewing claims
- Administrator – manages system data

---

## UC-02 Submit Claim

**Actor:** Healthcare Provider  

**Description:**  
Healthcare provider submits a claim for medical services provided to an insured person.

**Preconditions:**
- Provider is registered in the system
- Insurance policy exists and is active

**Main Flow:**
1. Provider selects insured person
2. Provider enters claim details (service, cost, date)
3. System validates input data
4. Claim is submitted
5. System sets status to "Submitted"

**Postconditions:**
- Claim is stored in the system
- Claim is ready for review

---

## UC-04 Review Claim

**Actor:** Claims Specialist  

**Description:**  
Claims specialist reviews submitted claim and decides whether it should be approved or rejected.

**Preconditions:**
- Claim status is "Submitted"

**Main Flow:**
1. Specialist opens claim
2. System displays claim details
3. Specialist checks policy coverage
4. Specialist verifies provider and service
5. Specialist makes decision

**Alternative Flow:**
- If data is missing → claim is marked for clarification

**Postconditions:**
- Claim status updated

---

## UC-05 Approve Claim

**Actor:** Claims Specialist  

**Description:**  
Claim is approved if all validation checks pass.

**Postconditions:**
- Status = Approved

---

## UC-06 Reject Claim

**Actor:** Claims Specialist  

**Description:**  
Claim is rejected if validation fails.

**Postconditions:**
- Status = Rejected
- Rejection reason is stored
