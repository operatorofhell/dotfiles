
if ! dpkg -l fzf > /dev/null
then
	FZF_BINDINGS="/usr/share/doc/fzf/examples/key-bindings.zsh"
	FZF_COMPLETION="/usr/share/doc/fzf/examples/completion.zsh"

	test -f $FZF_BINDINGS && source $FZF_BINDINGS
	test -f $FZF_COMPLETION && source $FZF_COMPLETION
	export FZF_DEFAULT_OPTS="--extended --cycle"
fi
