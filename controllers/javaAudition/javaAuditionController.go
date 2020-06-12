package javaAudition

import (
	"github.com/astaxie/beego"
	"github.com/siddontang/go/log"
	"math/rand"
	"myproject/models"
	"time"
)

type JavaAuditionController struct {
	beego.Controller
}

func (c *JavaAuditionController) Get() {
	count := models.GetJavaAuditionCount()
	rand.Seed(time.Now().UnixNano())
	log.Info(count)
	if count > 10 {

	}
	c.TplName = "javaAudition/javaAudition.html"
}
