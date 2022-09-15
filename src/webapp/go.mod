module website.com/webapp

replace website.com/api => ../api

go 1.19

require (
	github.com/gorilla/mux v1.8.0
	website.com/api v0.0.0-00010101000000-000000000000
)
