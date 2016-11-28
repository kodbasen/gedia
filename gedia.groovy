@Grab('io.ratpack:ratpack-groovy:1.3.3')
@Grab('ch.qos.logback:logback-classic:1.1.7')
@Grab('ch.qos.logback:logback-core:1.1.7')

import static ratpack.groovy.Groovy.ratpack

ratpack {
  ratpack.server.BaseDir.find()
  handlers {
    get {
      render(file("message.txt"))
    }
  }
}
