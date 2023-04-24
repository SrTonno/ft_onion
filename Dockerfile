FROM nginx

RUN apt-get update -y && \
	apt-get upgrade -y && \
	apt-get install tor openssh-server -y

RUN useradd -m -s /bin/bash user42 && echo "user42:uptoyou" | chpasswd
RUN mkdir -p /var/lib/tor/my_website/
RUN chmod 700 /var/lib/tor/my_website/
RUN chown -R debian-tor /var/lib/tor/my_website/

COPY files/torrc /etc/tor/torrc
COPY files/script_start.sh /root/script_start.sh
COPY files/sshd_config /etc/ssh/sshd_config
COPY files/index.html /usr/share/nginx/html/index.html


EXPOSE 80
EXPOSE 4242
EXPOSE 9050

CMD ["sh", "/root/script_start.sh"]
#CMD ["/bin/bash"]
