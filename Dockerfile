FROM python:3.8
RUN pip3 install -U umr_telegram_driver umr_line_driver umr_discord_driver umr_coolq_driver umr_mirai_driver umr_extensions_demo
RUN apt update && \
    apt install libcairo2 ffmpeg libmagickwand-dev wget -y

VOLUME [ "/root/.umr" ]

ADD start.sh /root/start.sh
RUN chmod +x /root/start.sh
CMD [ "/root/start.sh" ]