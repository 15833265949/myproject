package main

import (
	"github.com/astaxie/beego"
	_ "myproject/routers"
)

func main() {
	beego.AddFuncMap("add", add)
	beego.Run()
}

func add(in int) (out int) {
	return in + 1
}
