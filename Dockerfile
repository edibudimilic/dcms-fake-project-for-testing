FROM ruby:3.3-alpine
WORKDIR /app
COPY Gemfile ./
RUN bundle install
COPY server.rb ./
EXPOSE 3000
CMD ["ruby","server.rb"]
