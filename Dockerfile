# Use official Java 17 image
FROM eclipse-temurin:17-jdk

# Set working directory
WORKDIR /app

# Copy project files to container
COPY . .

# Build Spring Boot JAR (skip tests)
RUN ./mvnw clean package -DskipTests

# Expose port Spring Boot uses
EXPOSE 8080

# Run the built jar
CMD ["java", "-jar", "target/*.jar"]
