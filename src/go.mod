module ggsongfinder

go 1.19

replace website.com/api => ./api

replace website.com/dbmanager => ./dbmanager

replace website.com/webapp => ./webapp

require website.com/webapp v0.0.0-00010101000000-000000000000

require (
	github.com/gorilla/mux v1.8.0 // indirect
	website.com/api v0.0.0-00010101000000-000000000000 // indirect
)
