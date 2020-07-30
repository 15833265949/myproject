package controllers

import (
	"github.com/astaxie/beego"
)

type Data struct {
	Code int
	Msg string
	Data interface{}
}

type User struct {
	Name string
	Email string
}

type MainController struct {
	beego.Controller
}

func (c *MainController) Get() {
	data := &Data{
		Code: 200,
		Msg: "",
		Data: User{
			Name: "glc",
			Email: "guo-licheng@foxmail.com",
		},
	}
	c.Data["json"] = data
	c.ServeJSON()
	//c.TplName = "index.html"
}
