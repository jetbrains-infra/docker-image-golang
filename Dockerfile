ARG GO_VERSION=1.11.5

FROM golang:${GO_VERSION}

ARG GLIDE_VERSION=0.12.3
ARG DEP_VERSION=0.5.0

RUN mkdir -p /opt/glide \
 && wget -nv https://github.com/Masterminds/glide/releases/download/v$GLIDE_VERSION/glide-v$GLIDE_VERSION-linux-amd64.tar.gz -O- | \
    tar xzf - -C /opt/glide --strip-components=1 \
 && mv /opt/glide/glide /usr/local/bin/ \
 && go get github.com/sparrc/gdm \
 && go get github.com/2tvenom/go-test-teamcity \
 && wget -nv https://github.com/golang/dep/releases/download/v$DEP_VERSION/dep-linux-amd64 -O /usr/local/bin/dep \
 && chmod +x /usr/local/bin/dep
