from nginx:1.13

EXPOSE 80

RUN apt-get update && \
    apt-get install -y curl gnupg2 git && \
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

RUN mkdir app
COPY ./bower.json /usr/src/jekyllrb
COPY ./.bowerrc /usr/src/jekyllrb
RUN bower install --allow-root && mv app /tmp/app

COPY . /usr/src/jekyllrb
RUN mv /tmp/app/_bower_components /usr/src/jekyllrb/app/_bower_components
RUN mkdir /usr/src/jekyllrb/dist
RUN grunt build && rm -r /usr/share/nginx/html && mv dist /usr/share/nginx/html
