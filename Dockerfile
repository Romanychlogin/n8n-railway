FROM n8nio/n8n:latest

# Переключаемся на root для выполнения COPY + chmod
USER root

# Копируем скрипты в /home/node
COPY entry_main.sh /home/node/entry_main.sh
COPY entry_worker.sh /home/node/entry_worker.sh

# Даём права на исполнение
RUN chmod +x /home/node/entry_main.sh /home/node/entry_worker.sh

# Назначаем владельца node (для безопасности)
RUN chown node:node /home/node/entry_main.sh /home/node/entry_worker.sh

# Переключаемся обратно на node
USER node

# Устанавливаем рабочую директорию
WORKDIR /home/node