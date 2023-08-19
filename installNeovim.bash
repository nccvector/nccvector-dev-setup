# Installing xclip (needed for pasting from clipboard)
sudo apt install xclip

if [ ! -d "$SCRIPT_DIR/neovim" ]; then
	# Cloning neovim
	git clone https://github.com/neovim/neovim.git
fi

# Making neovim
sudo apt install build-essential libtool libtool-bin automake cmake pkg-config gettext -y
cd neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo

# Installing neovim
sudo make install
cd ..

pip install pynvim
