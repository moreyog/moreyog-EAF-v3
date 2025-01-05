# Project Title
EAF Parent is parent module which holds all common dependencies (defined is dependecymanagement)

## Project Dependencies

| Dependency                  | Version      |
|-----------------------------|--------------|
| Spring Boot                 | 3.3.2        |
| Spring Cloud                | 2023.0.3     |
| Spring Cloud Kubernetes All | 1.1.10.RELEASE |
| JSON Web Token (JWT)        | 0.11.5       |
| Java                        | 18           |
| Lombok                      | 1.18.26      |
| MySQL Connector             | 8.0.32       |
| Maven Plugin                | 3.0.4        |


## Installation
## Installation

To set up your project, choose one of the following approaches based on your requirements:

### Approach 1: Discovery Server-Based Setup
Use this approach if you want to enable Spring Cloud Kubernetes Discovery for both Feign-based and DiscoveryClient-based communication.

Add the following dependencies to your `pom.xml`:

```xml
<dependency>
    <groupId>org.springframework.cloud</groupId>
    <artifactId>spring-cloud-starter-kubernetes-all</artifactId>
</dependency>
<dependency>
    <groupId>org.springframework.cloud</groupId>
    <artifactId>spring-cloud-starter-openfeign</artifactId>
</dependency>

```

Approach 2: Without Discovery Server
This approach is suitable if you want to use Spring Cloud Kubernetes with Feign, accessing the Kubernetes API server without relying on a Discovery server.

Add the following dependencies to your pom.xml:

```xml
<dependency>
    <groupId>org.springframework.cloud</groupId>
    <artifactId>spring-cloud-starter-openfeign</artifactId>
</dependency>
<dependency>
    <groupId>org.springframework.cloud</groupId>
    <artifactId>spring-cloud-starter-kubernetes-client-all</artifactId>
</dependency>
```
## Usage
Build - mvn clean install

IMP Note - increment pom version if any update (otherwise it will break existing)
