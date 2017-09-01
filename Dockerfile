FROM golang:1.8.3
ARG GLIDE_VERSION=0.12.3

RUN mkdir -p /opt/glide \
 && wget -nv https://github.com/Masterminds/glide/releases/download/v$GLIDE_VERSION/glide-v$GLIDE_VERSION-linux-amd64.tar.gz -O- | \
    tar xzf - -C /opt/glide --strip-components=1 \
 && mv /opt/glide/glide /usr/local/bin/ \
 && go get github.com/sparrc/gdm \
 && go get github.com/2tvenom/go-test-teamcity
