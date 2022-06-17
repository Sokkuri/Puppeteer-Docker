FROM node:lts-bullseye-slim

COPY ./install.sh /install.sh

RUN ["./install.sh"]

