FROM python:alpine
RUN apk update && \
    apk install build-base cairo-dev cairo cairo-tools ffmpeg libmagickwand-dev wget -y
RUN pip3 install -U umr_telegram_driver umr_line_driver umr_discord_driver umr_coolq_driver umr_mirai_driver umr_extensions_demo

VOLUME [ "/root/.umr" ]

ADD start.sh /root/start.sh
RUN chmod +x /root/start.sh
CMD [ "/root/start.sh" ]