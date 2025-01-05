@echo off
REM Navigate to the project directory
REM cd /path/to/your/project

REM Compile the source code and skip tests
REM mvn clean install -DskipTests
REM docker build -t moreyog/catalog-service:1.0.0 .


mvn clean install -DskipTests && (
    REM Build the Docker image
    docker build -t moreyog/${artifactId}-service:${version} . && (
        REM Delete the existing Kubernetes deployment
        REM kubectl delete -f .\k8s\deployment.yaml && (
            REM Apply the new Kubernetes deployment
            kubectl apply -f .\k8s\deployment.yaml
        REM ) && (
            REM port forward to host
            kubectl port-forward svc/${artifactId}-service 8080:8080
        REM )
    )
)

echo Build completed successfully
