class projects::work {

    include mysql
    include pow

    boxen::project { 'work':
      mysql         => true,
      nginx         => true,
      ruby          => '1.9.3',
      source        => 'jwalsh/rails_bootcamp'
    }

    nodejs::module { ['coffee-script', 'meteorite']:
      node_version => 'v0.10'
    }

  }


