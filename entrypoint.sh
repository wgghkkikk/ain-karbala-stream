#!/bin/sh
while true; do
  ffmpeg -re -i "https://stream.alkafeel.net/live/alkafeel/playlist.m3u8" \
  -vf "drawtext=fontfile=/font.ttf:text='عين كربلاء':x=w-tw-5:y=5:fontsize=70:fontcolor='#FFD700':box=1:boxcolor=black@0.8, drawtext=fontfile=/font.ttf:text='اللهم ارزقنا زيارة الحسين في الدنيا وشفاعته في الآخرة .. قناة عين كربلاء ترحب بكم':x=-tw+mod(t*80\,w+tw):y=h-th-20:fontsize=40:fontcolor=white:box=1:boxcolor=black@0.5" \
  -c:v libx264 -preset superfast -b:v 1500k -maxrate 1500k -bufsize 3000k -pix_fmt yuv420p -g 60 -c:a aac -b:a 96k -f flv "rtmp://a.rtmp.youtube.com/live2/q12g-s6wc-0y03-0ua5-6e6p"
  sleep 5
done
