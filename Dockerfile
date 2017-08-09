from node:boron
RUN npm install -g bower

RUN apt-get update && \
    apt-get install -y ruby ruby-dev && \
    gem install bundler && \
    npm install -g grunt

RUN mkdir /usr/src/jekyllrb
WORKDIR /usr/src/jekyllrb

COPY Gemfile /usr/src/jekyllrb
COPY Gemfile.lock /usr/src/jekyllrb
RUN bundle install

COPY package.json /usr/src/jekyllrb
RUN npm install

COPY . /usr/src/jekyllrb

RUN mkdir /usr/src/jekyllrb/app
RUN mkdir /usr/src/jekyllrb/dist

VOLUME /usr/src/jekyllrb/app
VOLUME /usr/src/jekyllrb/dist

EXPOSE 3001 3000
CMD ["grunt", "serve"]
