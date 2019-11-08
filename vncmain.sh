#!/bin/bash
# Set them to empty is NOT SECURE but avoid them display in random logs.
export VNC_PASSWD=''
export USER_PASSWD=''
export TERM=linux
#hsetroot -fill /home/user/background.jpg &
xcompmgr &
#Disable All Lxpanel Error MSG
lxpanel > /dev/null 2>&1 &
echo "[IkvmDaemon] Starting Ikvm ...."
/usr/java/jdk1.8.0_231/bin/javaws -Xnosplash /app/launch.jnlp
echo "[IkvmDaemon] Started Ikvm ."
while true; do
    jnlpexist=$(ps -e | grep java)
    if [ "$jnlpexist" == "" ]; then
		echo "[IkvmDaemon] Ikvm exited. It will start after 3 seconds ..."
		sleep 3
		echo "[IkvmDaemon] Starting Ikvm ...."
		/usr/java/jdk1.8.0_231/bin/javaws -Xnosplash /app/launch.jnlp
		echo "[IkvmDaemon] Started Ikvm ."
                sleep 2
    else
               sleep 2
    fi
done
wait
