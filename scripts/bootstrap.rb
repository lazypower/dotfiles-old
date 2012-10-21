require 'colorize'


def does_exist?(path_to_check)
  File.exist?(path_to_check) || File.symlink?(path_to_check)
end


#grab current working directory
Dir.chdir("..")
puts "Sanity Check on submodules".yellow
`git submodule init`
`git submodule update`
Dir.chdir("dotfiles")

dotfiles = Dir.pwd
dots = "ln -s ~/.dotfiles"
home = File.expand_path("~")


unless does_exist?("#{home}/.dotfiles")
  puts "Linking #{dotfiles} to $HOME/.dotfiles".green
  `ln -s #{dotfiles} ~/.dotfiles`
end
puts "Setting up symlink tree".yellow
unless does_exist?("#{home}/.oh-my-zsh")
  puts "Linking Oh-My-ZSH".yellow
  `#{dots}/oh-my-zsh ~/.oh-my-zsh`
end
unless does_exist?("#{home}/.vim")
  puts "Linking VIM".yellow
  `#{dots}/dot-vim ~/.vim`
end
puts "Completed Processing Directories".green



puts "Symlinking configuration files".green
unless does_exist?("#{home}/.zshrc")
  puts "Linking zsh.rc".yellow 
  `#{dots}/zshdotrc ~/.zshrc`
end
unless does_exist?("#{home}/.tmux.conf")
  puts "Linking .tmux.conf".yellow 
  `#{dots}/dot-tmux.conf ~/.tmux.conf`
end
unless does_exist?("#{home}/.gitconfig")
  puts "Linking .gitconfig".yellow 
  `#{dots}/dot-gitconfig ~/.gitconfig`
end
unless does_exist?("#{home}/.vimrc")
  puts "Linking .vimrc".yellow
  `#{dots}/dot-vimrc ~/.vimrc`
end
puts "Complete".green

puts "Changing Shell".yellow
`chsh -s /bin/zsh`
puts "Done!".red
