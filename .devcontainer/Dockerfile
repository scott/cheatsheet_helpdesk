# Make sure RUBY_VERSION matches the Ruby version in .ruby-version
#ARG RUBY_VERSION=3.3.3
#FROM ghcr.io/rails/devcontainer/images/ruby:$RUBY_VERSION
FROM ruby:2.5

#RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
#RUN apt-get install nodejs -y
RUN apt-get update \
  && apt-get upgrade -y \
  && apt-get install -y nodejs postgresql-client imagemagick --no-install-recommends \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

# chrome needed for running test
# https://stackoverflow.com/a/71008100/16682649
#RUN apt-get install -y wget
#RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \ 
#    && echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list
#RUN apt-get update && apt-get -y install google-chrome-stable

# https://stackoverflow.com/a/77499286/16682649
# https://stackoverflow.com/a/78001106/31278
# https://www.ubuntuupdates.org/package/google_chrome/stable/main/base/google-chrome-stable
# https://chromedriver.storage.googleapis.com/
ENV CHROME_VERSION=114.0.5735.90-1
RUN wget -q https://mirror.cs.uchicago.edu/google-chrome/pool/main/g/google-chrome-stable/google-chrome-stable_${CHROME_VERSION}_amd64.deb
RUN apt-get -y update
RUN apt-get install -y ./google-chrome-stable_${CHROME_VERSION}_amd64.deb