FROM ruby:3.0.1-buster

RUN curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash && \
    source ~/.profile && \
    nvm install 12.20.2 && \
    npm install yarn && \
    gem install rails && bundle install && yarn install

COPY . /app
WORKDIR /app
