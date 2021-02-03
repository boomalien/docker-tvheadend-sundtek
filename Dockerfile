FROM ghcr.io/linuxserver/tvheadend

RUN \
 echo "**** installing sundtek driver ****" && \
 mkdir -p /sundtek && \
 cd /sundtek && \
 wget http://sundtek.de/media/sundtek_netinst.sh && \
 chmod 777 sundtek_netinst.sh && \
 echo "Y" | ./sundtek_netinst.sh -docker -use-custom-path=/sundtek
