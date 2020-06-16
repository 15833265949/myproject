package models

import (
	"github.com/astaxie/beego/logs"
	"github.com/jinzhu/gorm"
	"myproject/models/mysql"
)

type Radio struct {
	gorm.Model
	Title       string `grom:"size:255"`
	Type        int
	OptionA     string `grom:"size:255"`
	OptionB     string `grom:"size:255"`
	OptionC     string `grom:"size:255"`
	OptionD     string `grom:"size:255"`
	Answer      string `grom:"size:10"`
	Explanation string `grom:"size:255"`
}

func GetJavaAuditionCount() (count int) {
	db, err := mysql.GetConnect()
	defer db.Close()
	if err != nil {
		logs.Debug("err:%s 数据库连接错误", err)
	}
	db.Table("radio").Count(&count)
	return
}

func GegTenAudition(ids []uint) (ras []*Radio) {
	db, err := mysql.GetConnect()
	defer db.Close()
	if err != nil {
		logs.Debug("err:%s 数据库连接错误", err)
	}
	radios := []*Radio{}
	find := db.Debug().Where(ids).Find(&radios)
	if find.Error != nil {
		logs.Error(find.Error)
	}
	return radios
}

func SaveRadio(redio *Radio) {
	db, err := mysql.GetConnect()
	//db.CreateTable(&Radio{})
	defer db.Close()
	if err != nil {
		logs.Debug("err:%s 数据库连接错误", err)
	}
	db.Create(redio)
}
