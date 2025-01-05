Artifact to create starter k8s based project

- Use this artifact to create spring boot + kubernets based starter application
- use "mvn clean install" to install artifact
- using following command create new projects 
  - mvn archetype:generate -DarchetypeGroupId=com.example.arch -DarchetypeArtifactId=demo-arch-archetype -DarchetypeVersion=0.0.1-SNAPSHOT -DgroupId=com.myproject -DartifactId=<NAME> -Dversion=1.0.0
  - eaf-parent - if you don't have access to eaf-parent then comment eaf-parent in POM and use spring boot starter as parent.
      <parent>
          <!--    <groupId>com.eaf</groupId>-->
          <!--    <artifactId>eaf-parent</artifactId>-->
          <!--    <version>1.0.0-SNAPSHOT</version>-->
          <!-- lookup parent from repository  comment com.eaf and uncomment below-->
          <groupId>org.springframework.boot</groupId>
          <artifactId>spring-boot-starter-parent</artifactId>
          <version>3.3.2</version>
      </parent>
  - Use run.bat to build , create docker and run as POD
  - For 1st run, if you see run.bat gives error for delete deployment file then
          kubectl apply -f .\k8s\deployment.yaml
  - To access POD, we are using port-forward, change XXXX:8080 in below command
          kubectl port-forward svc/${artifactId}-service 8080:8080
