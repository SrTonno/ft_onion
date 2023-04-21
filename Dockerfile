FROM nginx

RUN apt-get update -y && \
	apt-get upgrade -y
RUN apt-get install tor -y

RUN mkdir -p /var/lib/tor/my_website/
RUN chmod 700 /var/lib/tor/my_website/
RUN chown -R debian-tor /var/lib/tor/my_website/
#RUN echo "HiddenServiceDir /var/lib/tor/my_website/" > /etc/tor/torrc \
#	&& echo "HiddenServicePort 80 127.0.0.1:80" >> /etc/tor/torrc


RUN echo "Up to you" > /usr/share/nginx/html/index.html
#RUN echo "Port 4242" >> /etc/ssh/sshd_config

EXPOSE 80
EXPOSE 4242
EXPOSE 9050
