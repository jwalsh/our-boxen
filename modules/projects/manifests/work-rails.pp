class projects::work-rails {

    include mysql
    include pow

    boxen::project { 'work-rails':
      mysql         => true,
      nginx         => true,
      ruby          => '1.9.3',
      source        => 'boxen/boxen-web'
    }

  }


