#/bin/bash
ffmpeg -loglevel error -f v4l2 -i /dev/video0 -f alsa -i plughw:1 -codec:v libx264 -pix_fmt yuv420p -preset ultrafast -b:v 3000k -g 60 -codec:a aac -b:a 128k -ar 44100 -maxrate 3000k -bufsize 1500k -strict experimental -vf "scale=1920:1080,hue=s=0,transpose=2,transpose=2" -f flv rtmp://a.rtmp.youtube.com/live2/<key goes here>
