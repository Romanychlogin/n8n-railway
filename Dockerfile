FROM n8nio/n8n:latest

# Копируем скрипты в домашнюю директорию пользователя node
COPY entry_main.sh /home/node/entry_main.sh
COPY entry_worker.sh /home/node/entry_worker.sh

# Даём права на исполнение
RUN chmod +x /home/node/entry_main.sh /home/node/entry_worker.sh

# Указываем рабочую директорию
WORKDIR /home/node
