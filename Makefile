STOW := stow

TARGETS := $(HOME)/.byobu $(HOME)/.zshrc $(HOME)/.vimrc $(HOME)/bin

all: $(TARGETS)
clean:
	find * -type d | while read d; do\
	   stow -D $$d -t $(HOME) || true;\
	done

$(HOME)/bin: bin
	stow -S -t ~/ $<

$(HOME)/.byobu: byobu
	stow -S -t ~/ $<

$(HOME)/.zshrc: zsh
	stow -S -t ~/ $<

$(HOME)/.vimrc: vim
	stow -S -t ~/ $<
