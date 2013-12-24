class people::jwalsh {

    notify { 'jwalsh initializing...': }
    
    case $::hostname {

        'Jasons-MacBook-Pro-2.local': {
          notify { "Defaulting development environment": }
        }
        
        default: {
          notify { "Generic environment": }
        }
      }

      include boxen::development
      # include projects::core
      include projects::work-clojure
      # include projects::work-node
      include projects::work-rails

      include emacs
      include gpg
      include onepassword
      include zsh

    }
