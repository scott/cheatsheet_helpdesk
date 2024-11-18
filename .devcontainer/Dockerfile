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