# Debianがベースのrubyイメージを指定
FROM ruby:2.7.1

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

# 必要なものをインストール
RUN apt-get update -qq && apt-get -y install \
    build-essential \
    nodejs \
    default-mysql-client \
    yarn

# rails用のディレクトリを作成
RUN mkdir /admin-app

# ローカルマシン(Mac)からコンテナの中にファイルをコピー
COPY Gemfile /admin-app/Gemfile

# 作業ディレクトリを指定
WORKDIR /admin-app

# 上でコピーしたGemfileに従ってGemをインストール
RUN gem install bundler && bundle install

# puma.sockを配置するディレクトリを作成
RUN mkdir -p tmp/sockets

EXPOSE 4010