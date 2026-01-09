# ---------- BUILD STAGE ----------
FROM maven:3.9.3-eclipse-temurin-17 AS build
WORKDIR /app

# Copy parent POM
COPY pom.xml ./pom.xml

# Copy auth-service POM
COPY auth/auth-service/pom.xml auth/auth-service/pom.xml

# Download dependencies
RUN mvn -f auth/auth-service/pom.xml dependency:go-offline -B

# Copy source
COPY auth/auth-service/src auth/auth-service/src

# Build JAR
RUN mvn -f auth/auth-service/pom.xml clean package -DskipTests

# ---------- RUNTIME STAGE ----------
FROM eclipse-temurin:17-jre
WORKDIR /app

COPY --from=build /app/auth-service/target/*.jar app.jar

EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]
