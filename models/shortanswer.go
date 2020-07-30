package models

import "github.com/jinzhu/gorm"

type ShortAnswer struct {
	gorm.Model
	Title string	`gorm:size`
	Answer string
	Type int
}
