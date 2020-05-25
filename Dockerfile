FROM python:alpine
RUN apk --no-cache add cairo-dev ffmpeg imagemagick-dev wget lapack libstdc++
RUN apk --no-cache add --virtual .builddeps jpeg-dev zlib-dev g++ gcc gfortran musl-dev lapack-dev && \
    pip install -U umr_telegram_driver umr_line_driver umr_discord_driver umr_coolq_driver umr_mirai_driver umr_extensions_demo && \
    apk del .builddeps && rm -rf /root/.cache

VOLUME [ "/root/.umr" ]

ADD start.sh /root/start.sh
RUN chmod +x /root/start.sh
CMD [ "/root/start.sh" ]