VENV_NAME := venv
VENV_ACTIVATE := ./$(VENV_NAME)/bin/activate

PIP_REQUIREMENTS := requirements.txt

ANSIBLE_FOLDER := ansible

.PHONY: setup

setup:
	python3 -m venv $(VENV_NAME)
	source $(VENV_ACTIVATE)
	pip install -r $(requirements)

deploy:
	source $(VENV_ACTIVATE)
	cd $(ANSIBLE_FOLDER)
	ansible-playbook playbook.yaml -i inventory.yaml
