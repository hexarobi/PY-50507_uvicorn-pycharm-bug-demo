setup: virtualenv

VENV := .virtualenv
virtualenv:
	command -v deactivate && deactivate || true
	python -m venv $(VENV)
	source $(VENV)/bin/activate && \
		pip3 install --upgrade pip pip-tools && \
		pip-sync requirements.txt

run:
	uvicorn example:app
