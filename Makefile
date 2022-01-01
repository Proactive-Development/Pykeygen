all: build
setup:
	apt install python3.8-venv
	pip install pytest
	pip install build
	pip install twine
test:
	python3 -m pytest -v
build:
	python3 -m pytest -v # Test before build
	python3 -m build
publish:
	python3 -m twine upload dist/*
clean:
	rm -rf */__pycache__
	rm -rf dist
	rm -rf pykeygenerator.egg-info