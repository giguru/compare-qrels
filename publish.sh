# Make sure you have the latest PIP
python3 -m pip install --upgrade build

# Remove old dist
rm dist/*

# Build package
python3 -m build

# Make sure you have the latest Twine
python3 -m pip install --upgrade twine

# Upload files to PyPi test server
python3 -m twine upload --repository testpypi dist/* --verbose

echo "Test your package by installing it via: "
echo "python3 -m pip install --index-url https://test.pypi.org/simple/ --no-deps compare-qrels"

echo ""
echo "Upload your package to production PyPi:"
echo "twine upload dist/* --verbose"