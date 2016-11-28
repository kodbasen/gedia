FROM kodbasen/groovy-arm:2.4.7

ADD gedia.groovy /app/gedia.groovy
ADD message.txt /app/message.txt
ADD .ratpack /app/.ratpack
CMD ["-cp", "/app", "/app/gedia.groovy"]
