FROM alpine:3.18
RUN apk add --no-cache ffmpeg wget
RUN wget -q https://github.com/google/fonts/raw/main/ofl/amiri/Amiri-Bold.ttf -O /font.ttf
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
