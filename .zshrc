# autoloader
for file in ~/.zsh/auto/*.zsh
do
	test -f $file && source $file
done

# initialize anitgen
antigen init ~/.zsh/antigenrc

# Set up the prompt

autoload -Uz promptinit
promptinit
prompt adam1

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
#bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history


alias dotfiles='/usr/bin/git --git-dir=/home/moe/.dotfiles/ --work-tree=/home/moe'
