WHICHPYTHON=$(which python)
PYTHON=python

if [ -z "$WHICHPYTHON" ]; then
	WHICHPYTHON=$(which python3)
	PYTHON=python3
	if [ -z "$WHICHPYTHON" ]; then
		echo "ERROR, Please install python"
		exit 125
	fi
fi

echo "Successfuly found python!"
echo "Path: 	$WHICHPYTHON"
echo "Command: 	$PYTHON"
echo "Version:	$($PYTHON --version)"

echo "Finding pip..."

sudo apt install $PYTHON-pip -y

WHICHPIP=$(which pip)
PIP=pip

if [ -z "$WHICHPIP" ]; then
	WHICHPIP=$(which pip3)
	PIP=pip3
	if [ -z "$WHICHPIP" ]; then
		echo "ERROR, Please install pip"
		exit 125
	fi
fi

echo "Successfuly found pip!"
echo "Path: 	$WHICHPIP"
echo "Command: 	$PIP"
echo "Version:	$($PIP --version)"

echo "Installing Essential libraries"
echo "Installing Numpy"
$PIP install numpy
$PIP install matplotlib
