FROM flyqie/vdesktop:latest
RUN apt install -y lxpanel wget xcompmgr hsetroot
RUN mkdir /usr/java
RUN mkdir /home/user/Templates
RUN wget -O /home/user/background.jpg https://raw.githubusercontent.com/flyqieqq/Docker-Test/master/Think_Human_by_monkeymagico.jpg
RUN touch /home/user/.Xauthority && chmod 777 /home/user/.Xauthority
RUN echo 'gtk-icon-theme-name = "nuoveXT2"' > /home/user/.gtkrc-2.0 && chmod 777 /home/user/.gtkrc-2.0
RUN wget http://usdl.flyqie.date/download/jdk-8u231-linux-x64.tar.gz
RUN tar zxvf jdk-8u231-linux-x64.tar.gz -C /usr/java/
RUN rm -f jdk-8u231-linux-x64.tar.gz
RUN echo "JAVA_HOME=/usr/java/jdk1.8.0_231" >> /etc/environment
COPY vncmain.sh /app/vncmain.sh
