package main
import ("fmt";"net/http";"os")
func main(){
  p:=os.Getenv("PORT"); if p==""{p="3000"}
  http.HandleFunc("/",func(w http.ResponseWriter,r *http.Request){
    fmt.Fprint(w,"<!doctype html><title>DCMS fixture</title><h1>dcms-stack-go OK</h1>")})
  http.ListenAndServe("0.0.0.0:"+p,nil)
}
