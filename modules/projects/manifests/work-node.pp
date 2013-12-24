class projects::work-node {

    include nodejs

    boxen::project { 'work-node':
      nodejs        => true,
      source        => 'jwalsh/custexpdata'
    }

    # nodejs::module { ['coffee-script', 'grunt-cli']:
    #   node_version => '0.10.0'
    # }

  }


