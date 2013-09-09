class projects::sample {
  include icu4c
  include phantomjs

  boxen::project { 'sample':
    dotenv        => true,
    mysql         => true,
    nginx         => true,
    ruby          => '1.9.3'
  }
}
