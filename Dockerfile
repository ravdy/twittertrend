FROM openjdk:8
RUN useradd -ms /bin/bash docker
USER docker
WORKDIR /home/docker
ADD jarstaging/com/stalin/demo-workshop/2.0.2/demo-workshop-2.0.2.jar demo-workshop.jar
ENTRYPOINT ["java", "-jar", "demo-workshop.jar"]