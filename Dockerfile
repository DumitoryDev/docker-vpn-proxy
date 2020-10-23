FROM phusion/baseimage:18.04-1.0.0

RUN apt update \
	&& curl https://install.zerotier.com/ | bash \
	&& apt install -y nodejs \
	&& apt install -y npm

COPY proxy /proxy 
COPY startup-scripts /startup-scripts 

ARG room_id
ARG listenport
ARG forwardport
ARG forwardip

ENV room_id_arg $room_id
ENV listenport_arg $listenport
ENV forwardport_arg $forwardport
ENV forwardip_arg $forwardip

ENTRYPOINT sh -c  "chmod +x ./startup-scripts/vpn.sh && ./startup-scripts/vpn.sh $room_id_arg && chmod +x ./startup-scripts/proxy.sh && ./startup-scripts/proxy.sh --listenport=$listenport_arg --forwardport=$forwardport_arg --forwardip=$forwardip_arg"

