docker container stop ghost-theme-dev
docker container rm ghost-theme-dev
docker build . -t ghost-local
docker run -it --name ghost-theme-dev \
  -v //e/Projects/ghost-theme:/var/lib/ghost/content/themes/ghost-theme \
  -v //e/Projects/ghost-data:/var/lib/ghost/content \
  -p 2368:2368 ghost-local