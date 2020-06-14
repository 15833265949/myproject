package javaAudition

import (
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/logs"
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
	var ids []uint
	if count > 10 {
		for {
			if len(ids) < 10 {

				id := rand.Intn(count)
				if !isContain(ids, uint(id)) && id != 0 {
					ids = append(ids, uint(id))
				}
			} else {
				break
			}
		}

	}
	audition := models.GegTenAudition(ids)
	for _, v := range audition {
		logs.Info("%+v", v)
	}
	c.Data["audition"] = audition
	c.TplName = "javaAudition/javaAudition.html"
}

func isContain(items []uint, item uint) bool {
	for _, eachItem := range items {
		if eachItem == item {
			return true
		}
	}
	return false
}
