package models

import (
	"fmt"
	"github.com/astaxie/beego/logs"
	"myproject/models/mysql"
)

type CrawPath struct {
	Id uint `gorm:"primary_key"`
	Url string `grom:"size:255"`
	Type int `grom:"size:1"`
}

func IsInPath(url string)bool{
	db, err := mysql.GetConnect()
	defer db.Close()
	if err != nil {
		logs.Debug("err:%s 数据库连接错误", err)
	}
	var count int
	db.Table("craw_path").Where("url=?",url).Count(&count)
	fmt.Errorf("%d",count)
	if count >=1{
		return true
	}else {
		return false
	}
}
func SaveCraw(craw *CrawPath){
	db, err := mysql.GetConnect()
	defer db.Close()
	if err != nil {
		logs.Debug("err:%s 数据库连接错误", err)
	}
	db.Create(craw)
}