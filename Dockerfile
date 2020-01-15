FROM ghost:3

ENV NPM_CONFIG_LOGLEVEL verbose
ENV NODE_ENV development

RUN apt-get update && apt-get install -y rsync sudo && rm -rf /var/lib/apt/lists/*

RUN npm install -g nodemon@latest
WORKDIR /var/lib/ghost
COPY run.sh .
CMD ["bash", "run.sh"]