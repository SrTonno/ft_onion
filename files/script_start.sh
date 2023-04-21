# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    script_start.sh                                    :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tvillare <tvillare@student.42madrid.com    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/22 00:21:09 by tvillare          #+#    #+#              #
#    Updated: 2023/04/22 00:21:10 by tvillare         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

!#/bin/sh
service sshd-service start
service nginx start
service tor start
cp /var/lib/tor/my_website/hostaname ~/domain_onion.txt
