class projects::work {

    include nodejs

    boxen::project { 'work':
      nodejs        => true,
      source        => 'jwalsh/custexpdata'
    }

    nodejs::module { ['coffee-script', 'meteorite']:
      node_version => 'v0.10'
    }

  }


