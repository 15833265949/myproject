package models

import (
	"github.com/astaxie/beego/logs"
	"github.com/jinzhu/gorm"
	"myproject/models/mysql"
	"strings"
)

type Radio struct {
	gorm.Model
	Title       string `gorm:"size:255"`
	Type        int
	OptionA     string `gorm:"size:255"`
	OptionB     string `gorm:"size:255"`
	OptionC     string `gorm:"size:255"`
	OptionD     string `gorm:"size:255"`
	Answer      string `gorm:"size:10"`
	Explanation string `gorm:"size:255"`
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
	//find := db.Debug().Order("rand()").Find(&radios).Limit(10)
	//if find.Error != nil {
	//	logs.Error(find.Error)
	//}
	rows, err := db.Debug().Raw("select * from radio where answer != '' and deleted_at is null order by rand() limit 10").Rows()
	if err != nil{
		logs.Debug("err:%s db.Raw(", err)
	}
	defer rows.Close()
	for rows.Next(){
		var radio Radio
		db.ScanRows(rows,&radio)
		radios = append(radios, &radio)
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
	//redio.OptionA=redio.OptionA.
	if strings.Index(redio.OptionA,"</p>") != -1{
		redio.OptionA = strings.ReplaceAll(redio.OptionA,"</p>","")
	}
	if strings.Index(redio.OptionA,"<p>") != -1{
		redio.OptionA = strings.ReplaceAll(redio.OptionA,"<p>","")
	}
	if strings.Index(redio.OptionA,"<p") != -1{
		redio.OptionA = strings.ReplaceAll(redio.OptionA,"<p","")
	}

	if strings.Index(redio.OptionB,"</p>") != -1{
		redio.OptionB = strings.ReplaceAll(redio.OptionB,"</p>","")
	}
	if strings.Index(redio.OptionB,"<p>") != -1{
		redio.OptionB = strings.ReplaceAll(redio.OptionB,"<p>","")
	}
	if strings.Index(redio.OptionB,"<p") != -1{
		redio.OptionB = strings.ReplaceAll(redio.OptionB,"<p","")
	}

	if strings.Index(redio.OptionC,"</p>") != -1{
		redio.OptionC = strings.ReplaceAll(redio.OptionC,"</p>","")
	}
	if strings.Index(redio.OptionC,"<p>") != -1{
		redio.OptionC = strings.ReplaceAll(redio.OptionC,"<p>","")
	}
	if strings.Index(redio.OptionC,"<p") != -1{
		redio.OptionC = strings.ReplaceAll(redio.OptionC,"<p","")
	}

	if strings.Index(redio.OptionD,"</p>") != -1{
		redio.OptionD = strings.ReplaceAll(redio.OptionD,"</p>","")
	}
	if strings.Index(redio.OptionD,"<p>") != -1{
		redio.OptionD = strings.ReplaceAll(redio.OptionD,"<p>","")
	}
	if strings.Index(redio.OptionD,"<p") != -1{
		redio.OptionD = strings.ReplaceAll(redio.OptionD,"<p","")
	}

	if strings.Index(redio.Title,"</p>") != -1{
		redio.Title = strings.ReplaceAll(redio.Title,"</p>","")
	}
	if strings.Index(redio.Title,"<p>") != -1{
		redio.Title = strings.ReplaceAll(redio.Title,"<p>","")
	}
	if strings.Index(redio.Title,"<p") != -1{
		redio.Title = strings.ReplaceAll(redio.Title,"<p","")
	}
	db.Create(redio)
}
