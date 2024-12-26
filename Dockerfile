
# Use official golang image as base
FROM golang:1.21

# Set working directory
WORKDIR /app

# Copy source code
COPY . .

# Download dependencies
RUN go mod tidy

# Initialize environment variables
ENV PORT=8080
ENV CLIENT_ID=your_client_id
ENV CLIENT_SECRET=your_client_secret
ENV FQDN=https://example.com

# Document that the container uses port 8080
EXPOSE 8080

# Command to run the application
CMD ["go", "run", "."]