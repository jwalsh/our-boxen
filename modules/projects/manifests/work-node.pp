class projects::work-node {

    # include some provided versions
    include nodejs::v0_10
    include nodejs::v0_8_8

    # install any arbitrary nodejs version
    nodejs { 'v0.10': }

    class { 'nodejs::global': version => 'v0.10' }

    # install some npm modules
    # Yeoman tools
    nodejs::module { 'yo': node_version => 'v0.10' }
    nodejs::module { 'grunt-cli': node_version => 'v0.10' }
    nodejs::module { 'bower': node_version => 'v0.10' }

    boxen::project { 'work-node':
        nodejs        => true,
        source => 'jwalsh/custexpdata'
    }

  }


