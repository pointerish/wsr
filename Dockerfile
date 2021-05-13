FROM ruby:3.0.1-buster

COPY . /app
WORKDIR /app

RUN bash -c "curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash && \
    source ~/.bashrc && \
    nvm install 12.20.2 && \
    gem install rails && bundle install && npm install"

EXPOSE 3000