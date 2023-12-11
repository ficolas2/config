
# Better Ctrl + r command search, and fuzzy file search (press Alt + C to fuzzy cd)
if [ ! -d ~/.fzf ]; then 
	sudo git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
	sudo ~/.fzf/install
else
	echo "fzf already installed"
fi

# Kitty
if [ ! -d ~/.local/kitty.app ]; then
	sudo curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
else
	echo "kitty already installed"
fi

# Nvim
if [ ! -d ~/.config/nvim ]; then
	git clone https://github.com/nvim-lua/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
else
	echo "nvim already installed"
fi

# Dependency for nvim telescope grep search
if [ -z $(dpkg -l | grep ripgrep) ]; then
	sudo apt install ripgrep
else
	echo "ripgrep already installed"
fi

# Tmux
if [ -z $(dpkg -l | grep tmux) ]; then
	sudo apt install tmux
else
	echo "tmux already installed"
fi
