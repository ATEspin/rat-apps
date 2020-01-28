

# distribute python

PY="py -3"

echo 
echo Installing Python virtualenv
echo

$PY -m pip install virtualenv
rm -rf dist build
mkdir build

echo
echo Creating new Python virtual environment
echo
sleep 1

$PY -m virtualenv build/venv
source build/venv/scripts/activate

echo
echo Installing requirements
echo
sleep 1

pip install . pyinstaller

echo
echo Distributing Xmaze
echo
sleep 1
pyinstaller scripts/Xmaze.py --onefile

echo
echo Cleaning up
echo
sleep 1

rm -rf build

echo Done