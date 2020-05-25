FROM python:alpine
RUN apk --no-cache add cairo-dev ffmpeg imagemagick-dev imagemagick wget lapack libstdc++
RUN apk --no-cache add --virtual .builddeps jpeg-dev zlib-dev g++ gcc gfortran musl-dev lapack-dev && \
    pip install -U Wand umr_telegram_driver umr_line_driver umr_discord_driver umr_coolq_driver umr_mirai_driver umr_extensions_demo && \
    apk del .builddeps && rm -rf /root/.cache
RUN ln -s /usr/lib/libMagickWand-7.Q16HDRI.so.6 /usr/lib/libMagickWand-7.Q16HDRI.so

VOLUME [ "/root/.umr" ]

ENV MAGICK_HOME=/usr

ADD start.sh /root/start.sh
RUN chmod +x /root/start.sh
CMD [ "/root/start.sh" ]