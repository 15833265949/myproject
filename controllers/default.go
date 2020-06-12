package controllers

import (
	"github.com/astaxie/beego"
)

type MainController struct {
	beego.Controller
}

func (c *MainController) Get() {
	c.Data["Website"] = "glc"
	c.Data["Email"] = "guo-licheng@foxmail.com"
	c.TplName = "index.html"
}
