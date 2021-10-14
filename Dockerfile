FROM ubuntu:latest
ENTRYPOINT ["tail", "-f", "/dev/null"]
ENV HOSTNAME HELLO
RUN apt-get update 
RUN apt-get install -y doxygen 
RUN apt-get install -y make
RUN apt-get install -y g++
RUN [ "hostname"]
COPY . /app
WORKDIR /app
CMD [ "./build.sh" ]
CMD [ "./server.exe &" ]
CMD [ "./test_client.exe" ]
