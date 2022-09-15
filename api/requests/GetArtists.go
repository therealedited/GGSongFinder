package requests

import (
	"encoding/json"
	"log"
	"net/http"

	"github.com/therealedited/GGSongFinder/database"
)

func GetArtists(w http.ResponseWriter, r *http.Request) {
	var (
		idArtist int
		name     string
		artists  []string
	)
	rows, err := database.Inst.Query("select idArtist, name from artist")
	if err != nil {
		log.Printf("Query Error: %v", err)
	}
	w.WriteHeader(http.StatusCreated)
	w.Header().Set("Content-Type", "application/json")
	for rows.Next() {
		err := rows.Scan(&idArtist, &name)
		if err != nil {
			log.Fatal("Error GetArtists: ", err)
		}
		artists = append(artists, name)

	}
	resp := make(map[string]interface{})
	resp["artist"] = artists
	jsonResp, err := json.Marshal(resp)
	if err != nil {
		log.Fatalf("Error happened in JSON marshal. Err: %s", err)
	}
	w.Write(jsonResp)
	rows.Close()
}
