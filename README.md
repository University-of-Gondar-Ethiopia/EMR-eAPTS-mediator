# FastAPI Mediator for EMR and eAPTS Systems

## Overview

This project serves as a mediator using the FastAPI Python framework to enable interoperability between EMR (Electronic Medical Records) and eAPTS (Electronic Auditable Pharmacy Transactions and systems.

## Features

- Endpoint to retrieve patient information from EMR system
- Data transformation and mapping between EMR and eAPTS formats
- Error handling and logging mechanisms

## Installation

1. Clone the repository
2. Install dependencies using `pip install -r requirements.txt`
3. Navigate to app directory `cd app`
4. Run the FastAPI server using `uvicorn main:app --reload`

## Usage

1. Access the API documentation at `http://localhost:8000/docs` for detailed information on available endpoints and request/response formats.
2. Use the provided endpoints to interact with the EMR and eAPTS systems.

## Copying and Configuring Environment Variables

To set up your environment variables, follow these steps:

1. Copy the contents of the `.env.copy` file.
2. Create a new file named `.env`.
3. Paste the copied contents into the `.env` file.
4. Update the variables in the `.env` file as needed.

Make sure to keep sensitive information secure and not to share your `.env` file publicly.

## Contribution

Contributions are welcome! If you'd like to contribute to this project, please follow these steps:

1. Fork the repository
2. Create a new branch
3. Make your changes
4. Submit a pull request
