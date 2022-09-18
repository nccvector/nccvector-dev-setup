# Installing qtile
sudo apt install python3-cffi xserver-xorg python3-xcffib -y
sudo apt install python3-cairocffi libpangocairo-1.0-0 -y

pip install --no-cache-dir cairocffi

git clone https://github.com/qtile/qtile.git
cd qtile
pip install .

cd ..

# Copying the .desktop file to register the session
echo -ne '\n' | sudo cp $SCRIPT_DIR/configs/qtile/qtile.desktop /usr/share/xsessions
