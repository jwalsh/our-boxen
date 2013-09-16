class projects::core {
  include chrome
  include firefox
  include skype
  include evernote
  include item2
  include hub
  include homebrew
  include omnigraffle
  include zshgitprompt
  include charles 

  boxen::project { 'core':
    dotenv        => true,
    mysql         => true,
    nginx         => true,
    ruby          => '1.9.3'
  }
}
