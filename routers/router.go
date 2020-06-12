package routers

import (
	"github.com/astaxie/beego"
	"myproject/controllers"
	"myproject/controllers/javaAudition"
)

func init() {
	beego.Router("/", &controllers.MainController{})

	beego.Router("/javaAuditionBefor", &javaAudition.JavaAuditionController{})
}
