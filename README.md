# Project Management API with Laravel

A RESTful API for project management with dynamic attributes (EAV pattern), timesheet tracking, and user authentication.
Containerized with Docker for easy setup.

## Features

- ✅ JWT Authentication (Laravel Passport)
- ✅ CRUD for Projects, Users, Timesheets
- ✅ Dynamic Attributes (EAV)
- ✅ Advanced Filtering (standard + EAV fields)
- 🐳 Dockerized Environment

## Quick Start

### Prerequisites

- Docker & Docker Compose
- GNU Make
- curl/httpie (for testing)

### Installation

```bash
# Start containers
make run-app

# Seed test data
make seed-app
```
This will cover all the setup.

And the API will be available at:
http://localhost:8080/api

### APIs

All models support CRUD operations and more!  
You can find a list of the APIs in the [API Reference](API.postman_collection.json)
(Recommend to import it into Postman to get a full list if the APIs)

### Credentials

Pre-seeded test user:

```json
{
    "email": "john.doe@example.com",
    "password": "password"
}
```

Example:
```bash
curl -X POST http://localhost:8080/api/login \
  -H "Content-Type: application/json" \
  -d '{
    "email": "john.doe@example.com",
    "password": "password"
}'
```
Response:
```json
{
    "access_token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiI5ZTU1MDQxYi1jYmU3LTQ1MjktOTc4NC00NDczODg5YzIyZDYiLCJqdGkiOiJlOTM0Mzc3OTk5MmFiNDBkYzMwN2EwMzNiNTJjNjRjYzFhN2RmMzUwMWMzNzMxYTExM2VlNTZkMGYzZjQwZGExMjBkYWQ5YjJiYzhiMDQwYiIsImlhdCI6MTc0MDg4MTQ4NC44NDM4OTgsIm5iZiI6MTc0MDg4MTQ4NC44NDM4OTksImV4cCI6MTc1Njc3OTA4NC44MjY1ODEsInN1YiI6IjEiLCJzY29wZXMiOltdfQ.bidQ4rm0LtrxFtmFOSwGLK7L-00ouwwDSf6cAtBwzIwMUSjcauS1JPW5GfYDXm145F1s8egfGNWR0zL5ZcYFfgeo-1uAzKM-0z1W2RWOkWtzwlnlaqDAOd7ZkEf4PqypZWageEY4WPqjOf4Wttd9gcosJusoItvQXyDE03pOeIyKBxmyVtPgWo3ftHJAB_YL4fFF4MhEeyASFVi6hFqzxip5n1tbR2bNqpJEaRJYsKP3uRsp_aJr5d3sFpq_3kdV263maPP31w8mqJaDWkDtxyse2AUrZ42c0JPCpRYrN98r8JMuPGWlJt3gu6nZ6xVdW0hnTWJAbYKj5NjNRLYEyqal8rkb0EhbV1n59DK_Pj2eyj16lhBvVp8cTk8JCzfsx9WlabTIRWktFtpgqPBoz_zn1smgzjl7II_EV9luL7ZBriXz41lvVRnDlsKZsivdwi_j3j_lV6wXbs9N2jaCbfPhC-cb6nHWRDZTRHnCxsTWxzUb-CQLRVR-ZjjuhJirzCU_97l7GG7biQw2ftpUKXb9F_1W6_5uuG0KyMuA7du-OERKaIqlFmoMw44y72G2jM7udE8As74aqdT4jirY9Hjs_JumObX7bEIIznj8h1m6REiwzooHyz0h8cihE7RdznR73OFDAGAy0GN_ZI8Q1ThdVYzbwwoqcG21G77Xwec"
}
```

Once logged in, you will receive an ``access_token`` use it in subsequent requests as a Bearer token in the Authorization header.

Note: if you imported the collection mentioned in the API section into Postman, you can set the token as an environment variable in the parent directory so that all child requests have it automatically.

### Database
As requested in the assessment brief, I've included a dump of the SQL here: [database_dump.sql](database_dump.sql)

However I do not recommend using it as everything will be generated and seeded automatically for the sake of simplicity for the reviewer.
### Contact

Please reach out to <eliasmnada@gmail.com> if you have any questions in inquiries.
