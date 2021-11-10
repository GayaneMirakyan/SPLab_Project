FROM ubuntu:latest

RUN apt-get update
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ADD ./AllFileNames.sh /usr/src/app/
ADD ./ReverseNum.sh /usr/src/app/
ADD ./FileOrDirectory.sh /usr/src/app/
ADD ./LinesCount.sh /usr/src/app/

RUN echo "./ReverseNum.sh script 8645" >> temp
RUN ./ReverseNum.sh 8645 >> temp
RUN echo >> temp

RUN echo "./AllFileNames.sh script /usr/src/app/" >> temp
RUN ./AllFileNames.sh /usr/src/app/ >> temp
RUN echo >> temp

RUN echo "./FileOrDirectory.sh script /usr/src/app/ReverseNum.sh" >> temp
RUN ./FileOrDirectory.sh /usr/src/app/ReverseNum.sh >> temp
RUN echo >> temp

RUN echo "in LinesCount.sh script /usr/src/app/ReverseNum.sh" >> temp
RUN ./LinesCount.sh /usr/src/app/ReverseNum.sh >> temp
RUN echo >> temp

ENTRYPOINT ["cat", "temp"]
