FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=2.23.6

RUN gem install bake-toolkit --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["bake"]
CMD ["--help"]
