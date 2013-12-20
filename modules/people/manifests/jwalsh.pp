class people::jwalsh {

    notify { 'jwalsh init': }
    
    case $::hostname {

        'Jasons-MacBook-Pro-2.local': {
          notify { "Defaulting development environment": }
        }
        
        default: {
          notify { "Generic environment": }
        }
      }

      include boxen::development
      include projects::work
      include emacs
      include gpg
      include onepassword
      include zsh

    }
