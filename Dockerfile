FROM mono:latest

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y bash git curl

WORKDIR /work
RUN git clone https://github.com/colgreen/sharpneat

WORKDIR /work/sharpneat/src
RUN nuget restore
RUN msbuild -m

COPY ./docker-entrypoint.sh /bin

ENTRYPOINT ["/bin/docker-entrypoint.sh"]
