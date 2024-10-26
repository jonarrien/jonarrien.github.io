.DEFAULT_GOAL := help
.PHONY: help

# Slightly adjusted from https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html.
help:
        @grep -E '^[0-9a-z.A-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: server
server: ## Starts structurizr locally
	python3 -m http.server
