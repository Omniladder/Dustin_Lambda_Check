FROM ubuntu:20.04

RUN apt update && apt install -y git
RUN git clone https://github.com/Omniladder/Dustin_Lambda_Check.git
WORKDIR Dustin_Lambda_Check
RUN sh setup.sh