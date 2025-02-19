SHELL := /bin/bash

REPO := https://github.com/sr-murthy/openai-xpe

PACKAGE_NAME := openai_xpe
BRANCH := $(shell git rev-parse --abbrev-ref HEAD)
HEAD := $(shell git rev-parse --short=8 HEAD)
PACKAGE_VERSION := $(shell grep __version__ src/openai_xpe/version.py | cut -d '=' -f 2 | xargs)

PROJECT_ROOT := $(PWD)

TESTS_ROOT := $(PROJECT_ROOT)/tests

#DOCS_ROOT := $(PROJECT_ROOT)/docs
#DOCS_BUILD := $(DOCS_ROOT)/_build
#DOCS_BUILD_HTML := $(DOCS_ROOT)/_build/html

# Make everything (possible)
all:

# Git
git_stage:
	@echo "\n$(PACKAGE_NAME)[$(BRANCH)@$(HEAD)]: Staging new, modified, deleted and/or renamed files in Git\n"
	git status -uno | grep modified | tr -s ' ' | cut -d ' ' -f 2 | xargs git add && \
	git status -uno | grep deleted | tr -s ' ' | cut -d ' ' -f 2 | xargs git add -A && \
	git status -uno

# Housekeeping
clean:
	@echo "\n$(PACKAGE_NAME)[$(BRANCH)@$(HEAD)]: Deleting all temporary files\n"
	rm -fr docs/_build/* .pytest_cache *.pyc *__pycache__* ./dist/* ./build/* *.egg-info*

# A simple version check for the installed package (local, sdist or wheel)
version_check:
	@echo "\n$(PACKAGE_NAME)[$(BRANCH)@$(HEAD)]: Checking installed package version (if it is installed)\n"
	python3 -c "import os; os.chdir('src/openai_xpe'); from version import __version__; print(__version__); os.chdir('../')"

version_extract:
	echo "$(PACKAGE_VERSION)"

# Dependency management
update_deps:
	@echo "\n$(PACKAGE_NAME)[$(BRANCH)@$(HEAD)]: Update all development dependencies, including documentation and production dependencies\n"
	pdm update -v --dev --no-editable --no-self --update-all

# Linting
lint: clean
	@echo "\n$(PACKAGE_NAME)[$(BRANCH)@$(HEAD)]: Linting source code with Ruff\n"
	cd "$(PROJECT_ROOT)" && ruff check src

# Running tests
doctests: clean
	@echo "\n$(PACKAGE_NAME)[$(BRANCH)@$(HEAD)]: Running doctests in all core libraries\n"
	cd "$(PROJECT_ROOT)" && \
	python -m doctest -v src/openai_xpe/*.py

unittests: clean
	@echo "\n$(PACKAGE_NAME)[$(BRANCH)@$(HEAD)]: Running package unit tests + measuring coverage\n"
	cd "$(PROJECT_ROOT)" && \
	python3 -m pytest \
				--cache-clear \
				--capture=no \
				--code-highlight=yes \
				--color=yes \
				--cov=src \
				--cov-report=term-missing:skip-covered \
				--dist worksteal \
				--numprocesses=2 \
				-ra \
				--tb=native \
				--verbosity=3 \
				tests/units
