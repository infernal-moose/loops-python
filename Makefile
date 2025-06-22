pypi-publish:
	uv run python -m build
	uv run twine upload 'dist/*'
.PHONY: pypi-publish

setup:
	uv venv .venv
	uv sync --all-extras --dev --frozen
	pre-commit install
.PHONY: setup

test:
	uv run pytest
.PHONY: test

lint:
	uv run check ruff .
.PHONY: lint
