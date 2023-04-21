# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tvillare <tvillare@student.42madrid.com    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/22 00:21:22 by tvillare          #+#    #+#              #
#    Updated: 2023/04/22 00:22:51 by tvillare         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM nginx

RUN apt-get update -y && \
	apt-get upgrade -y && \
	apt-get install tor openssh-server -y

RUN useradd -m -p uptoyou user42
RUN mkdir -p /var/lib/tor/my_website/
RUN chmod 700 /var/lib/tor/my_website/
RUN chown -R debian-tor /var/lib/tor/my_website/

COPY files/torrc /etc/tor/torrc
COPY files/index.html /usr/share/nginx/html/index.html
COPY files/script_start.sh /root/script_start.sh
#COPY file/sshd_config /etc/ssh/sshd_config

RUN echo "Port 4242" >> /etc/ssh/sshd_config

EXPOSE 80
EXPOSE 4242
EXPOSE 9050

CMD ["/bin/bash"]
