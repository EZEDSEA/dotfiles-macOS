# https://fishshell.com/docs/current/cmds/abbr.html

# General UNIX
abbr -a -g c clear
abbr -a -g df 'df -h'
abbr -a -g du 'du -h'
abbr -a -g dud 'du -d 1 -h'
abbr -a -g duf 'du -sh *'
abbr -a -g mkdir 'mkdir -pv'
abbr -a -g mv 'mv -iv'

# Config dir access
abbr -a -g cdot 'cd $DOTFILES'
abbr -a -g cdxc 'cd $XDG_CONFIG_HOME'
abbr -a -g cdfi 'cd $XDG_CONFIG_HOME/fish'
abbr -a -g cdnv 'cd $XDG_CONFIG_HOME/nvim'
abbr -a -g cdxd 'cd $XDG_DATA_HOME'
abbr -a -g cdxa 'cd $XDG_CACHE_HOME'

# Moving around
abbr -a -g .. 'cd ..'
abbr -a -g ... 'cd ../../'
abbr -a -g .... 'cd ../../../'
abbr -a -g ..... 'cd ../../../../'
abbr -a -g - 'cd -'

# Tree
abbr -a -g t1 'tree -CFL 1'
abbr -a -g t1a 'tree -CFLa 1'
abbr -a -g t2 'tree -CFL 2'
abbr -a -g t2a 'tree -CFLa 2'
abbr -a -g t3 'tree -CFL 3'
abbr -a -g t3a 'tree -CFLa 3'
abbr -a -g t4 'tree -CFL 4'
abbr -a -g t4a 'tree -CFLa 4'
abbr -a -g tree 'tree -CF'

# Git
abbr -a -g ga 'git add'
abbr -a -g gaa 'git add --all'
abbr -a -g gap 'git add --patch'
abbr -a -g gb 'git branch'
abbr -a -g gba 'git branch --all'
abbr -a -g gbm 'git branch -m'
abbr -a -g gbr 'git branch --remote'
abbr -a -g gca 'git commit --amend'
abbr -a -g gcl 'git clone'
abbr -a -g gcm 'git cm'
abbr -a -g gco 'git checkout'
abbr -a -g gcom 'git checkout master'
abbr -a -g gdc 'git diff --cached'
abbr -a -g gdf 'git diff'
abbr -a -g gf 'git fetch'
abbr -a -g gfu 'git fetch upstream'
abbr -a -g glo 'git log'
abbr -a -g gm 'git merge'
abbr -a -g gpl 'git pull'
abbr -a -g gps 'git push'
abbr -a -g gpsf 'git push --force-with-lease'
abbr -a -g gpst 'git push --tags'
abbr -a -g gpub 'git publish'
abbr -a -g gpum 'git push -u origin master'
abbr -a -g gpuo 'git push -u origin'
abbr -a -g gra 'git remote add'
abbr -a -g grb 'git rebase'
abbr -a -g grba 'git rebase --abort'
abbr -a -g grbc 'git rebase --continue'
abbr -a -g grbi 'git rebase -i'
abbr -a -g grbm 'git rebase master'
abbr -a -g gre 'git reset'
abbr -a -g grso 'git remote set-url origin'
abbr -a -g grsu 'git remote set-url'
abbr -a -g grup 'git remote add upstream'
abbr -a -g grv 'git remote -v'
abbr -a -g gs 'git status'
abbr -a -g gtl 'git tag --list'

# macOS Finder
abbr -a -g defr 'defaults read'
abbr -a -g defw 'defaults write'

# Misc
abbr -a -g neo 'neofetch'
abbr -a -g one 'onefetch'
abbr -a -g ch 'cht.sh'
abbr -a -g chs 'cht.sh --shell'
abbr -a -g color 'colortest -w -s'
abbr -a -g cv 'command -v'
abbr -a -g ra 'ranger'
abbr -a -g spt 'speedtest'

# Tmux
abbr -a -g tl 'tmux ls'
abbr -a -g tlw 'tmux list-windows'
abbr -a -g mux 'tmuxinator'

# Neovim
abbr -a -g vi 'nvim'
abbr -a -g vi0 'nvim -u NONE'
abbr -a -g vim 'nvim'
abbr -a -g vir 'nvim -R'
abbr -a -g vs 'nvim -S'
abbr -a -g vv 'nvim --version | less'

# asdf
abbr -a -g ala 'asdf list-all'
abbr -a -g ain 'asdf install nodejs'
abbr -a -g air 'asdf install ruby'

# https://fishshell.com/docs/current/commands.html#fish_update_completions
abbr -a -g ucl 'fish_update_completions'

# Homebrew
abbr -a -g b 'brew'
abbr -a -g bc 'brew cask'
abbr -a -g bci 'brew cask install'
abbr -a -g bcl 'brew cask list'
abbr -a -g bcr 'brew cask reinstall'
abbr -a -g bcz 'brew cask zap'
abbr -a -g bd 'brew doctor'
abbr -a -g bg 'brew upgrade'
abbr -a -g bi 'brew info'
abbr -a -g bo 'brew outdated'
abbr -a -g bp 'brew cleanup'
abbr -a -g brews 'brew list -1'
abbr -a -g bs 'brew search'
abbr -a -g bs0 'brew services stop'
abbr -a -g bs1 'brew services start'
abbr -a -g bsc 'brew services cleanup'
abbr -a -g bsl 'brew services list'
abbr -a -g bsr 'brew services restart'
abbr -a -g bsv 'brew services'
abbr -a -g bu 'brew update'

# Ansible
abbr -a -g ans 'ansible'
abbr -a -g anp 'ansible-playbook'
abbr -a -g anv 'ansible-vault --ask-vault-pass'
abbr -a -g ang 'ansible-galaxy'

# Rails
abbr -a -g RED 'RAILS_ENV=development'
abbr -a -g REP 'RAILS_ENV=production'
abbr -a -g RET 'RAILS_ENV=test'
abbr -a -g bx 'bundle exec'
abbr -a -g bud 'bundle update'
abbr -a -g bod 'bundle outdated'
abbr -a -g om 'overmind start'
abbr -a -g ocr 'overmind connect rails'
abbr -a -g hm 'hivemind'
abbr -a -g psp 'bin/rake parallel:spec'
abbr -a -g rc 'bin/rails console'
abbr -a -g rcop 'rubocop'
abbr -a -g rdb 'bin/rails dbconsole'
abbr -a -g rdm 'bin/rails db:migrate'
abbr -a -g rdms 'bin/rails db:migrate:status'
abbr -a -g rdr 'bin/rails db:rollback'
abbr -a -g rdr2 'bin/rails db:rollback STEP=2'
abbr -a -g rdr3 'bin/rails db:rollback STEP=3'
abbr -a -g rgm 'bin/rails generate migration'
abbr -a -g rs 'bin/rails server'
abbr -a -g rsp 'bin/rspec .'
abbr -a -g crsp 'env COVERAGE=true bin/rspec .'
abbr -a -g rtp 'bin/rails db:test:prepare'
abbr -a -g cred 'bin/rails credentials:edit --environment'

# NPM
abbr -a -g nb 'npm build'
abbr -a -g ncl 'npm clean'
abbr -a -g nd 'npm run dev'
abbr -a -g ndv 'npm develop'
abbr -a -g nit 'npm init'
abbr -a -g nig 'npm install -g'
abbr -a -g ni 'npm install'
abbr -a -g ns 'npm serve'
abbr -a -g nst 'npm start'
abbr -a -g nt 'npm test'
abbr -a -g nv 'npm --version'

# Yarn
abbr -a -g y 'yarn'
abbr -a -g ya 'yarn add'
abbr -a -g yad 'yarn add -D'
abbr -a -g yap 'yarn add --peer'
abbr -a -g yb 'yarn build'
abbr -a -g yba 'yarn build --analyze'
abbr -a -g yc 'yarn create'
abbr -a -g ycc 'yarn cache clean'
abbr -a -g ycl 'yarn clean'
abbr -a -g yd 'yarn dev'
abbr -a -g ydd 'yarn docs:dev'
abbr -a -g ydv 'yarn develop'
abbr -a -g yg 'yarn generate'
abbr -a -g yga 'yarn global add'
abbr -a -g ygls 'yarn global list'
abbr -a -g ygrm 'yarn global remove'
abbr -a -g ygu 'yarn global upgrade'
abbr -a -g yh 'yarn help'
abbr -a -g yi 'yarn init'
abbr -a -g yin 'yarn install'
abbr -a -g yls 'yarn list'
abbr -a -g yout 'yarn outdated'
abbr -a -g yp 'yarn pack'
abbr -a -g yrm 'yarn remove'
abbr -a -g yrun 'yarn run'
abbr -a -g ys 'yarn serve'
abbr -a -g yst 'yarn start'
abbr -a -g yt 'yarn test'
abbr -a -g ytc 'yarn test --coverage'
abbr -a -g yuc 'yarn global upgrade; and yarn cache clean'
abbr -a -g yui 'yarn upgrade-interactive'
abbr -a -g yup 'yarn upgrade'
abbr -a -g yupl 'yarn upgrade --latest'
abbr -a -g yv 'yarn version'
abbr -a -g yw 'yarn workspace'
abbr -a -g yws 'yarn workspaces'

# Ruby Gems
abbr -a -g gel 'gem cleanup'
abbr -a -g gemv 'gem environment'
abbr -a -g gins 'gem install'
abbr -a -g gli 'gem list'
abbr -a -g gout 'gem outdated'
abbr -a -g guns 'gem uninstall'
abbr -a -g gup 'gem update'
abbr -a -g gus 'gem update --system'
