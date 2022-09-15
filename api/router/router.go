package router

import (
	"net/http"

	"github.com/gorilla/mux"
	"github.com/therealedited/GGSongFinder/api/requests"
)

func InitRouter() *mux.Router {
	router := mux.NewRouter()
	router.HandleFunc("/artists", requests.GetArtists).Methods(http.MethodGet)
	return router
}
