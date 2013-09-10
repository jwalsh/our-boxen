class projects::work {

    include qt
    include pow
    include mysql

  boxen::project { 'work':
    dotenv        => true,
    mysql         => true,
    nginx         => true,
    ruby          => '1.9.3'
  }
}
