package router

import (
	"net/http"

	"github.com/gorilla/mux"
)

func InitRouter() *mux.Router {
	router := mux.NewRouter()
	router.HandleFunc("/artist", nil).Methods(http.MethodGet)
	return router
}
