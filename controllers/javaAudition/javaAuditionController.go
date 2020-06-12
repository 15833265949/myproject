package javaAudition

import (
	"github.com/astaxie/beego"
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
	var ids []int
	if count > 10 {
		for {
			if len(ids) < 10 {

				id := rand.Intn(count)
				if !isContain(ids, id) {
					ids = append(ids, id)
				}
			} else {
				break
			}
		}

	}
	models.GegTenAudition(ids)
	c.TplName = "javaAudition/javaAudition.html"
}

func isContain(items []int, item int) bool {
	for _, eachItem := range items {
		if eachItem == item {
			return true
		}
	}
	return false
}
