.PHONY: default
default:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: pre-commit-run
pre-commit-run: ## (devcontainer) Run all pre-commit hooks
	pipenv run pre-commit run --all-files

.PHONY: pre-commit-update
pre-commit-update: ## (devcontainer) Update pre-commit hooks
	pipenv run pre-commit autoupdate
