# Student CRUD REST API — Spring Boot

This project is a simple Student Management REST API built with Spring Boot, following best practices and the Twelve-Factor App approach.

## Features

- API Versioning (`/api/v1`)
- CRUD for Students
- MySQL Database
- Flyway Database Migrations
- Environment-based Configuration (using environment variables)
- Proper HTTP Status Codes
- Logging
- Healthcheck Endpoint
- Unit Tests
- Postman Collection
- Makefile for easy commands
- Dockerfile for containerized deployment

---

## Tech Stack

- Java 17  
- Spring Boot 3.x  
- Maven  
- MySQL  
- Flyway  
- Docker

---

## How to Run Locally (without Docker)

###  Install Requirements

- Java 17
- Maven
- MySQL running on `localhost:3306`

###  Set environment variables

```bash
export DB_URL="jdbc:mysql://localhost:3306/studentDatabase?createDatabaseIfNotExist=true&useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=Asia/Kolkata"
export DB_USERNAME="vishal_admin"
export DB_PASSWORD="StrongPass!123"
