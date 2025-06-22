pypi-publish:
	uv run python -m build
	uv run twine upload 'dist/*'
.PHONY: pypi-publish

setup:
	uv venv .venv
	uv ci
.PHONY: setup

test:
	uv run pytest
.PHONY: test
