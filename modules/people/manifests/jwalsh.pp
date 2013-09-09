class people::jwalsh {
  include emacs   # requires emacs module in Puppetfile
  include sparrow # requires sparrow module in Puppetfile

  $home     = "/Users/${::boxen_user}"
  $my       = "${home}/sandbox"
  $dotfiles = "${my}/dotfiles"

  file { $my:
    ensure  => directory
  }

  repository { $dotfiles:
    source  => 'jwalsh/dotfiles',
    require => File[$my]
  }
}