class people::jwalsh {

    notify { 'jwalsh init': }
    
    case $::hostname {

        'scruffy': {
          notify { "I'm Scruffy. The Janitor.": }
        }
        
        'bender': {
          notify { "My full name is Bender Bending Rodriguez": }
        }

        'Jasons-MacBook-Pro-2.local': {
          notify { "Defaulting development environment": }
        }
        
        default: {
          notify { "Wha?": }
        }
      }

      include boxen::development
      include projects::work
      include emacs
      include hub
      include gpg
      include nodejs
      
    }
