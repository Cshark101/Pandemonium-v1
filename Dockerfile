FROM node:lts-buster
USER root
RUN apt-get update && \
    apt-get install -y ffmpeg webp git && \
    apt-get upgrade -y && \
    rm -rf /var/lib/apt/lists/*
USER node
RUN git clone https://github.com/cshark101/Pandemonium-v1.git /home/node/Pandemonium-v1
WORKDIR /home/node/Pandemonium-v1
RUN chmod -R 777 /home/node/Pandemonium-v1/
RUN yarn install --network-concurrency 1
EXPOSE 7860
ENV NODE_ENV=production
CMD ["npm", "start"]
