PROJECT=pytest-raises
mkdir -p dist
if [ -z "$1" ]; then
    FILES="setup.py $(find $PROJECT -maxdepth 3 -name "*.py" -print) $(find tests -maxdepth 3 -name "*.py" -print)"
else
    FILES="$1"
    echo "linting $FILES"
fi
pylint $FILES | tee dist/pylint.log
