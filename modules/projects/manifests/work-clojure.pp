class projects::work-clojure {

    include java
    include clojure

    boxen::project { 'work-clojure':
      mysql         => true,
      nginx         => true,
      source        => 'jwalsh/cloaked-happiness-robo'
    }

  }


