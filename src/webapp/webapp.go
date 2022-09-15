package webapp

import (
	"fmt"
	"log"
	"net/http"
	"os"

	"github.com/gorilla/mux"
	"website.com/api"
)

func initRouter() *mux.Router {
	router := mux.NewRouter()
	router.HandleFunc("/artist", api.GetArtist).Methods(http.MethodGet)
	return router
}

func main() {
	router := initRouter()
	fmt.Println("Server at 8000")
	if router != nil {
		log.Fatal(http.ListenAndServe(":8000", router))
	}
	fmt.Println("Cannot initialize router.")
	os.Exit(-3)
}

func StartWebsite() {
	main()
}
