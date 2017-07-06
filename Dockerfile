FROM microsoft/dotnet:runtime

RUN \
    apt-get update && apt-get -y upgrade &&\
    apt-get -y install wget &&\
    wget -O azcopy.tar.gz https://aka.ms/downloadazcopyprlinux &&\
    tar -xzf azcopy.tar.gz &&\
    ./install.sh &&\
    rm -Rf azcopy* install.sh

CMD ["azcopy"]
