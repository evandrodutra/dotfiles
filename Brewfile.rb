cask_args appdir: '/Applications'

brew 'brew-cask-completion'

brew 'binutils'
brew 'coreutils'
brew 'findutils'
brew 'moreutils'

brew 'bash'
brew 'bash-completion'
brew 'bash-git-prompt'

brew 'git'
brew 'git-extras'
brew 'git-lfs'

brew 'homebrew/dupes/apple-gcc42'
brew 'autoconf'
brew 'automake'

tap 'homebrew/science'
tap 'homebrew/python'

brew 'python'
brew 'python3'

brew 'gpg'
brew 'gpg2'
brew 'the_silver_searcher'
brew 'wget'
brew 'tree'
brew 'nmap'

brew 'libtiff'
brew 'libjpeg'
brew 'imagemagick', args: ['--with-webp --with-fftw --with-librsvg --with-x11']
brew 'graphviz', args: ['--with-librsvg --with-x11']
brew 'freetype'

brew 'postgis'
brew 'postgresql'
brew 'redis'
brew 'awscli'
brew 'awsebcli'
brew 'heroku'
brew 'nvm'
brew 'yarn'
brew 'openssl'
brew 'neovim'

brew 'mas'

mas '1Password', id: 443_987_910
mas 'Xcode', id: 497_799_835
mas 'Keynote', id: 409_183_694
mas 'Numbers', id: 409_203_825
mas 'Airmail 3', id: 918_858_936
mas 'Gemini 2', id: 1_090_488_118
mas 'Kindle', id: 405_399_194
mas 'Reeder 3', id: 880_001_334
mas 'Moom', id: 419_330_170
mas 'Dr. Cleaner', id: 921_458_519
mas 'Twitter', id: 409_789_998

cask 'dropbox'
cask 'onedrive'
cask 'google-drive'
cask 'amazon-drive'

cask 'iterm2'
cask 'little-snitch'
cask 'alfred'
cask 'caffeine'
cask 'cheatsheet'
cask 'evernote'
cask 'google-chrome'
cask 'grammarly'
cask 'skitch'
cask 'skype'
cask 'slack'
cask 'sublime-text'
cask 'the-unarchiver'
cask 'tunnelbear'
cask 'virtualbox'
cask 'docker'
cask 'paragon-ntfs', version: '14'
cask 'gitkraken'
cask 'psequel'

cask 'adobe-creative-cloud'
cask 'adobe-creative-cloud-cleaner-tool'
cask 'adobe-photoshop-cc'
cask 'adobe-photoshop-lightroom'

cask 'franz'
cask 'kap'
cask 'firefox'
cask 'microsoft-office'
cask 'vlc'
cask 'etcher'
cask 'spotify'
cask 'fullcontact'
cask 'go2shell'
cask 'cyberduck'
cask 'dash'
cask 'ngrok'
cask 'suspicious-package'
cask 'beersmith2'
cask 'qlcolorcode'
cask 'qlstephen'
cask 'qlmarkdown'
cask 'quicklook-json'
cask 'qlprettypatch'
cask 'quicklook-csv'
cask 'betterzipql'
cask 'qlimagesize'
cask 'webpquicklook'

tap 'caskroom/fonts'

cask 'font-inconsolata'
cask 'font-quicksand.rb'
cask 'font-quintessential'
cask 'font-source-code-pro'
cask 'font-source-sans-pro'
cask 'font-hack'
cask 'font-roboto'
cask 'font-open-sans'
