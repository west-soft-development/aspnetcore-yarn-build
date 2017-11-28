FROM microsoft/aspnetcore-build:2

RUN apt-get update -y \
  && apt-get install apt-transport-https -y \
  && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
  && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
  && apt-get update -y \
  && apt-get install yarn=1.3.2-1 -y \
  && rm -rf /var/lib/apt/lists/*
