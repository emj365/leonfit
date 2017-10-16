from nginx:1.13

EXPOSE 80

RUN apt-get update && \
    apt-get install -y curl gnupg2 && \
    curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
    apt-get install -y nodejs ruby ruby-dev build-essential && \
    gem install bundler && \
    npm install -g grunt && \
    npm install -g bower # don't know why, bower only works when install like this

RUN mkdir /usr/src/jekyllrb
WORKDIR /usr/src/jekyllrb

COPY Gemfile /usr/src/jekyllrb
COPY Gemfile.lock /usr/src/jekyllrb
RUN bundle install

COPY package.json /usr/src/jekyllrb
RUN npm install

COPY . /usr/src/jekyllrb
RUN mkdir /usr/src/jekyllrb/dist
RUN grunt build && rm -r /usr/share/nginx/html && mv dist /usr/share/nginx/html
