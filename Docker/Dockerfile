FROM ubuntu:latest

RUN apt-get update
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY AllFileNames.sh /usr/src/app
COPY ReverseNum.sh /usr/src/app/
COPY FileOrDirectory.sh /usr/src/app/
COPY LinesCount.sh /usr/src/app/

RUN echo "ReverseNum.sh script" >> temp
RUN ./ReverseNum.sh 8645 >> temp

RUN echo "AllFileNames.sh script" >> temp
RUN ./AllFileNames.sh /usr/src/app/ >> temp

RUN echo "FileOrDirectory.sh script" >> temp
RUN ./FileOrDirectory.sh /usr/src/app/ReverseNum.sh >> temp

RUN echo "LinesCount.sh script" >> temp
RUN ./LinesCount.sh /usr/src/app/ReverseNum.sh >> temp

ENTRYPOINT ["cat", "temp"]
