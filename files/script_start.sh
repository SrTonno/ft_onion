# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    script_start.sh                                    :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tvillare <tvillare@student.42madrid.com    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/22 00:21:09 by tvillare          #+#    #+#              #
#    Updated: 2023/04/22 15:39:40 by tvillare         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

!#/bin/sh
service ssh restart
service nginx start
service tor start
cp /var/lib/tor/my_website/hostname ~/domain_onion.txt
/bin/bash
