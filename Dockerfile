FROM linuxserver/code-server:4.9.1

RUN apt-get update \
  && apt-get install -y python3-dev python3-venv python3-pip default-jdk gdebi-core graphviz

RUN curl -LO https://quarto.org/download/latest/quarto-linux-amd64.deb \
  && gdebi -n quarto-linux-amd64.deb \
  && /usr/local/bin/quarto check \
  && quarto install tinytex
