FROM n8nio/n8n:latest

# Копируем скрипты запуска внутрь контейнера
COPY entry_main.sh /entry_main.sh
COPY entry_worker.sh /entry_worker.sh

# Делаем их исполняемыми
RUN chmod +x /entry_main.sh /entry_worker.sh
