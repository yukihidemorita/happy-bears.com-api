FROM ruby:3.1.2

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update -qq \
    # パッケージのインストール（nodejs、postgresql-client、npmを指定） \
    && apt-get install -y yarn npm build-essential libpq-dev vim default-mysql-client\
    && rm -rf /var/lib/apt/lists/* \
    && npm install --global yarn \
    && mkdir /myapp

# 作業ディレクトリの指定
WORKDIR /myapp
RUN mkdir -p tmp/pids
RUN mkdir -p tmp/sockets

# Node.jsをインストール
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - && apt-get install -y nodejs

COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle config --local build.net-sftp -P HighSecurity
RUN bundle install
COPY . /myapp
RUN yarn install

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Configure the main process to run when running the image
CMD ["rails", "server", "-b", "0.0.0.0"]
