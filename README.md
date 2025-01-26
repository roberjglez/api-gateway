# API Gateway

The **API Gateway** acts as a unified entry point for routing requests to the respective microservices.

## Features

- Proxy and routing for requests.
- Simplifies interaction with internal services.

## Technologies Used

- **Java Spring Boot**
- **REST API**
- **Docker**
- **Kubernetes**

## Main Endpoints

- `POST /api/orders`: Forwards the request to the **Order Service**.
- `GET /api/orders/{id}`: Forwards the request to the **Order Service**.
- `GET /api/inventory/check/{productId}`: Forwards the request to the **Inventory Service**.
- `PUT /api/inventory/reduce/{productId}`: Forwards the request to the **Inventory Service**.

## Setup and Deployment

1. **Docker**:
    - Build the image:
      ```bash
      docker build -t api-gateway-service .
      ```
    - Run the container:
      ```bash
      docker run -p 8080:8080 api-gateway-service
      ```

2. **Kubernetes**:
    - Apply deployment and service manifests:
      ```bash
      kubectl apply -f deployment.yaml
      kubectl apply -f service.yaml
      ```