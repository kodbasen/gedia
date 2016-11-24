FROM kodbasen/groovy-arm:2.4.7

ADD gedia.groovy /app/gedia.groovy

CMD ["/app/gedia.groovy"]
