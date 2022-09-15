package website

import (
	"fmt"
	"log"
	"net/http"
	"os"

	"github.com/therealedited/GGSongFinder/api/router"
)

func Start() {
	router := router.InitRouter()
	fmt.Println("Server at 8000")
	if router != nil {
		log.Fatal(http.ListenAndServe(":8000", router))
	}
	fmt.Println("Cannot initialize router.")
	os.Exit(-3)
}
