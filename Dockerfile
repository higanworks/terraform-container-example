FROM debian:stable-slim

RUN apt-get update \
  && apt-get install curl git unzip -y \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /root

RUN git clone https://github.com/tfutils/tfenv.git ~/.tfenv \
  && echo 'export PATH="$HOME/.tfenv/bin:$PATH"' >> ~/.bash_profile

WORKDIR /mnt/workdir
ENTRYPOINT [ "/bin/bash", "-l" ]
