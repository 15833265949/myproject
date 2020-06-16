package main

import (
	"fmt"
	"io/ioutil"
	"myproject/models"
	"net/http"
	"regexp"
	"sync"
)

var urlMap sync.Map

var rootUrl = "http://www.doczj.com"

func main() {

	//http://www.doczj.com/doc/94366972524de518974b7d79-17.html
	//http://www.doczj.com/doc/c21054447dd184254b35eefdc8d376eeaeaa1700.html
	gogogo("http://www.doczj.com/doc/c21054447dd184254b35eefdc8d376eeaeaa1700.html")

}

func gogogo(url string) {
	if _, ok := urlMap.Load(url); ok {
		return
	}
	get, err := http.Get(url)
	if err != nil {
		panic(err)
		return
	}

	all, err := ioutil.ReadAll(get.Body)
	defer get.Body.Close()
	if err != nil {
		panic(err)
		return
	}
	if get.StatusCode != 200 {
		fmt.Printf("status code = %s", get.StatusCode)
		return
	}

	//<p>1．下面选项中，（ B ）是Java 关键字。</p><p>A、then</p><p>B、continue</p><p>C、java</p><p>D、PUBLIC</p>
	reg := regexp.MustCompile(`<p>([0-9]+).(?s:(.*?))</p><p>([A-Z]+)、(?s:(.*?))</p><p>([A-Z]+)、(?s:(.*?))</p><p>([A-Z]+)、(?s:(.*?))</p><p>([A-Z]+)、(?s:(.*?))</p>`)

	allString := reg.FindAllStringSubmatch(string(all), -1)
	fmt.Println(len(allString))
	for _, v := range allString {
		redio := &models.Radio{
			Type:    1,
			OptionA: v[4],
			OptionB: v[6],
			OptionC: v[8],
			OptionD: v[10],
		}
		compile := regexp.MustCompile(`(.*（ ?)([A-Z])( ?）.*)`)
		submatch := compile.FindAllStringSubmatch(v[2], -1)
		replaceAllString := compile.ReplaceAllString(v[2], "$1$3")
		redio.Title = replaceAllString
		for _, c := range submatch {
			redio.Answer = c[2]
		}
		models.SaveRadio(redio)
	}
	urlMap.Store(url, 1)

	//<a href="/doc/94366972524de518974b7d79-18.html" class="next">下一页</a>
	//fmt.Println(string(all))
	nextRe := regexp.MustCompile(`</a><a href="(.*)" class="next">`)
	nextUrl := nextRe.FindAllStringSubmatch(string(all), -1)
	fmt.Println(rootUrl + nextUrl[0][1])
	gogogo(rootUrl + nextUrl[0][1])

}
