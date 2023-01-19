FROM eclipse-temurin:11
RUN cd  ./webapp
COPY webapp.war /target
CMD ["java", "-war", "/target/webapp.war"]
