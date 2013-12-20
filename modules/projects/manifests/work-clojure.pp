class projects::work {

    include clojure

    boxen::project { 'work':
      mysql         => true,
      nginx         => true,
      clojure       => true,
      source        => 'jwalsh/cloaked-happiness-robo'
    }

    nodejs::module { ['coffee-script', 'meteorite']:
      node_version => 'v0.10'
    }

  }


