.PHONY: test coverage lint
# correr tests en Go
test:
	go test ./...
# generar un reporte de coverage con el nombre “coverage.out”.
coverage:
	go test -coverprofile=coverage.out ./...
# obtener información del coverage con un template de html.
coverage-html: coverage
	go tool cover -html=coverage.out
# obtener información del coverage total del proyecto.
coverage-total: coverage
	go tool cover -func=coverage.out
# ejecutar el linter.
lint:
	staticcheck