FROM node:lts-bullseye-slim

COPY ./install.sh /install.sh

RUN chmod +x ./install.sh && ./install.sh
