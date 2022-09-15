package dbmanager

import (
	"database/sql"
	"fmt"
	"os"

	"gopkg.in/ini.v1"
)

var Inst *sql.DB

func init() {
	dbCfg, err := ini.Load("db.ini")
	if err != nil {
		fmt.Printf("Failed to open database configuration: %v", err)
		os.Exit(-2)
	}

	username := dbCfg.Section("sql").Key("user").String()
	password := dbCfg.Section("sql").Key("password").String()
	dbname := dbCfg.Section("sql").Key("dbname").String()
	db, err := sql.Open("mysql", fmt.Sprintf("%s:%s@/%s", username, password, dbname))
	if err != nil {
		fmt.Printf("Failed to initialize database: %v", err)
		os.Exit(-1)
	}
	Inst = db
}
