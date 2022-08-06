FROM ttbb/base

ENV KAPACITOR_HOME /opt/sh/kapacitor

ARG TARGETARCH

RUN wget https://dl.influxdata.com/kapacitor/releases/kapacitor-1.6.4_linux_$TARGETARCH.tar.gz  && \
mkdir -p /opt/sh/kapacitor && \
tar -xf kapacitor-1.6.4_linux_$TARGETARCH.tar.gz -C /opt/sh/kapacitor --strip-components 2 && \
rm -rf kapacitor-1.6.4_linux_$TARGETARCH.tar.gz && \
ln -s /opt/sh/kapacitor/usr/bin/kapacitor /usr/bin/kapacitor && \
ln -s /opt/sh/kapacitor/usr/bin/kapacitord /usr/bin/kapacitord && \
ln -s /opt/sh/kapacitor/usr/bin/tickfmt /usr/bin/tickfmt

WORKDIR /opt/sh/kapacitor
