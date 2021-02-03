# docker-tvheadend-sundtek


### run command
docker run -d  \
--restart unless-stopped \
--name tvheadend \
--device /dev/dri:/dev/dri \
--device /dev/dvb:/dev/dvb \
--device=/dev/bus/usb \
-e TZ=Europe/Berlin \
-p 9981:9981 \
-p 9982:9982 \
-v /smartHome/applications/tvheadend/config:/config:rw \
-v /smartHome/applications/tvheadend/recordings:/recordings:rw \
-v /smartHome/applications/tvheadend/picons:/picons \
-v /etc/localtime:/etc/localtime:ro \
boomalien/docker-tvheadend-sundtek
