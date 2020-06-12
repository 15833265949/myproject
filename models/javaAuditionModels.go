package models

import (
	"github.com/astaxie/beego/logs"
	"myproject/models/mysql"
)

type JavaAudition struct {
	id          int    `gorm:"auto_increment"`
	title       string `grom:"size:255"`
	optionNum   int
	optionA     string `grom:"size:255"`
	optionB     string `grom:"size:255"`
	optionC     string `grom:"size:255"`
	optionD     string `grom:"size:255"`
	answer      string `grom:"size:10"`
	explanation string `grom:"size:255"`
}

func GetJavaAuditionCount() (count int) {
	db, err := mysql.GetConnect()
	if err != nil {
		logs.Debug("err:%s 数据库连接错误", err)
	}
	db.Table("radio").Count(&count)
	return
}
