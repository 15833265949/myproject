package models

import (
	"github.com/astaxie/beego/logs"
	"myproject/models/mysql"
)

type Radio struct {
	Id          int    `gorm:"auto_increment"`
	Title       string `grom:"size:255"`
	OptionNum   int
	OptionA     string `grom:"size:255"`
	OptionB     string `grom:"size:255"`
	OptionC     string `grom:"size:255"`
	OptionD     string `grom:"size:255"`
	Answer      string `grom:"size:10"`
	Explanation string `grom:"size:255"`
}

func GetJavaAuditionCount() (count int) {
	db, err := mysql.GetConnect()
	if err != nil {
		logs.Debug("err:%s 数据库连接错误", err)
	}
	db.Table("radio").Count(&count)
	return
}

func GegTenAudition(ids []int) {
	db, err := mysql.GetConnect()
	if err != nil {
		logs.Debug("err:%s 数据库连接错误", err)
	}
	var audition []Radio
	logs.Error("%+v ----", ids)
	find := db.Where("id in (?)", ids).Find(&audition)
	if find.Error != nil {
		logs.Error(find.Error)
	}
	for _, v := range audition {
		logs.Error("%+v =====", v)
	}
}
