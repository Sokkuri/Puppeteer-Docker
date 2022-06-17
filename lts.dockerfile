FROM node:lts-bullseye-slim

COPY ./install.sh /install.sh
COPY ./test/ /test/

RUN chmod +x ./install.sh && ./install.sh
RUN chmod +x ./test/test.sh
