FROM ruby:2.5.0-stretch

COPY . /opt/randomizer
WORKDIR /opt/randomizer
RUN rm -rf /opt/randomizer/.git
RUN bundle install --deployment --without development --binstubs

EXPOSE 9292
USER www-data
CMD [ "./bin/rackup", "-o", "0.0.0.0", "-p", "9292", "config.ru" ]
