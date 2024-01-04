sudo apt update

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

# i3
if [ -z $(dpkg -l | grep "i3 window manager") ]; then
	sudo apt install i3
else
	echo "i3 already installed"
fi

# compton
if [ -z $(dpkg -l | grep compton) ]; then
	sudo apt install compton
else
	echo "compton already installed"
fi

# nitrogen
if [ -z $(dpkg -l | grep nitrogen) ]; then
	sudo apt install nitrogen
else
	echo "nitrogen already installed"
fi

