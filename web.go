package main

import (
	"net/http"
	"os"
	"fmt"
)

func main() {
	hostname, err := os.Hostname()
	if err == nil {
	    fmt.Println("My hostname is ", hostname)
	}
	http.Handle("/", http.FileServer(http.Dir("/web/static")))
	http.ListenAndServe(":3000", nil)
}
