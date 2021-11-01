## Ruby
generate_client_ruby:
	@docker run -v ${PWD}:/local -u $(id -u):$(id -g)\
		openapitools/openapi-generator-cli:v5.2.0 generate \
		-i /local/petstore.yaml \
		-g ruby \
		-o /local/generated/ruby/client \
		--library=faraday \
		-p moduleName=Petstore
	@echo "ruby api client generated."

generate_server_ruby:
	@docker run -v ${PWD}:/local -u $(id -u):$(id -g)\
		openapitools/openapi-generator-cli:v5.2.0 generate \
		-i /local/petstore.yaml \
		-g ruby-on-rails \
		-o /local/generated/ruby/server \
		-p moduleName=Petstore
	@echo "ruby api server generated."

## Golang
generate_client_go:
	@docker run -v ${PWD}:/local -u $(id -u):$(id -g)\
		openapitools/openapi-generator-cli:v5.2.0 generate \
		-i /local/petstore.yaml \
		-g go \
		-o /local/generated/go/client
	@echo "go api client generated."

generate_server_go:
	@docker run -v ${PWD}:/local -u $(id -u):$(id -g)\
		openapitools/openapi-generator-cli:v5.2.0 generate \
		-i /local/petstore.yaml \
		-g go-echo-server \
		-o /local/generated/go/server
	@echo "go api server generated."

help-generate:
	@docker run -v ${PWD}:/local -u $(id -u):$(id -g) openapitools/openapi-generator-cli:v5.2.0 help generate

list:
	@docker run -v ${PWD}:/local -u $(id -u):$(id -g) openapitools/openapi-generator-cli:v5.2.0 list

help-list:
	@docker run -v ${PWD}:/local -u $(id -u):$(id -g) openapitools/openapi-generator-cli:v5.2.0 help list

