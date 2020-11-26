package main

import (
	"fmt"
	"net/http"
)

func main() {
	http.HandleFunc("/", home)

	http.ListenAndServe(":8080", nil)

}
func home(w http.ResponseWriter, r *http.Request) {

	fmt.Fprintln(w, "<h1>Code.education Rocks!</h1>")
}
