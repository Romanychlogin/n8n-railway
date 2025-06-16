FROM n8nio/n8n:latest

COPY entry_main.sh /home/node/entry_main.sh
COPY entry_worker.sh /home/node/entry_worker.sh

USER node
WORKDIR /home/node