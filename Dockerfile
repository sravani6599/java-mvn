# syntax=docker/dockerfile:1

# We use a multi-stage build setup.
# (https://docs.docker.com/build/building/multi-stage/)

# Stage 1 (to create a "build" image, ~360MB)
#FROM eclipse-temurin:17-jdk-alpine AS builder
# smoke test to verify if java is available
#RUN java -version
#FROM eclipse-temurin:11
#RUN mkdir /opt/app
#ENTRYPOINT ["/home/ec2-user/actions-runner/_work/java-mvn/java-mvn/webapp/webapp.war"]
#COPY /home/ec2-user/actions-runner/_work/java-mvn/java-mvn/webapp/webapp.war /opt/app
#CMD ["webapp", "-war", "/opt/app/webapp.war"]

#COPY . /home/ec2-user/actions-runner/
#WORKDIR ./webapp
#RUN mvn --version

# Stage 2 (to create a downsized "container executable", ~180MB)
#FROM eclipse-temurin:17-jre-alpine
#RUN apk --no-cache add ca-certificates
#WORKDIR ./webapp
#COPY --from=builder /home/ec2-user/actions-runner/_work/java-mvn/java-mvn/webapp/target/webapp.war


#EXPOSE 8123
#ENTRYPOINT ["java", "-war", "./webapp.war"]
