class projects::work {

    include qt
    include pow
    include mysql
    include nodejs::v0_10

  boxen::project { 'work':
    dotenv        => true,
    mysql         => true,
    nginx         => true,
    ruby          => '1.9.3'
  }

  # nodejs::module { ['coffee-script', 'meteorite']:
  #   node_version => 'v0.10'
  # }

}

# class { 'nodejs::global':
#   version => 'v0.10'
# }

