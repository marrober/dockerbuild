FROM fedora

USER root

ENV GOPATH=/go

RUN  mkdir /go && chmod 755 /go && yum install -y git golang-bin && go get github.com/yudai/gotty && yum clean all && mkdir /workspace && chmod 777 workspace

RUN git clone https://github.com/marrober/dockerbuild.git

RUN ls -alR /
