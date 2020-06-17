package main

import (
	"fmt"
	"io/ioutil"
	"net/http"
	"regexp"
	"sync"
)

var urlMap sync.Map

var rootUrl = "http://www.doczj.com"

func main() {

	//http://www.doczj.com/doc/94366972524de518974b7d79-17.html
	//http://www.doczj.com/doc/c21054447dd184254b35eefdc8d376eeaeaa1700.html
	//gogogo("http://www.doczj.com/doc/c21054447dd184254b35eefdc8d376eeaeaa1700.html")
	gogogo("http://www.doczj.com/doc/c21054447dd184254b35eefdc8d376eeaeaa1700-2.html")
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
	//<p>20.java.io包的File类是( B )</p><p>(A)字符流类(B) 字节流类 (C) 对象流类 (D) 非流类</p><p>
	//1．使用Java语言编写的源程序保存时的文件扩展名是（ B ）。</p><p>（A）.class （B）.java （C）.cpp （D）.txt 2．设int a=-2，则表达式a>>>3的值为（ C ）。
	//24. 若有定义：byte[] x={11,22,33,-66};</p><p>其中0≤k≤3，则对x数组元素错误的引用是（ C ）</p><p>A）x[5-3] B）x[k] C）x[k+5] D）x[0]</p
	//reg := regexp.MustCompile(`<p>([0-9]+).(?s:(.*?))</p><p>([A-Z]+)、(?s:(.*?))</p><p>([A-Z]+)、(?s:(.*?))</p><p>([A-Z]+)、(?s:(.*?))</p><p>([A-Z]+)、(?s:(.*?))</p>`)
	reg := regexp.MustCompile(`<p>[0-9]{1,2}.\s?([\s\S]+?)</p><p>.?A.?([\s\S]+?).B.?([\s\S]+?).C.?([\s\S]+?).D.?([\s\S]+?)</p>`)

	allString := reg.FindAllStringSubmatch(string(all), -1)
	fmt.Println(len(allString))
	for _, v := range allString {
		fmt.Printf("%s A:%s  B:%s  C:%s  D:%s\n", v[1], v[2], v[3], v[4], v[5])
		//redio := &models.Radio{
		//	Type:    1,
		//	OptionA: v[4],
		//	OptionB: v[6],
		//	OptionC: v[8],
		//	OptionD: v[10],
		//}
		compile := regexp.MustCompile(`([\s\S]+?(\(|（).?)([A-Z])([\s\S]+)`)
		submatch := compile.FindAllStringSubmatch(v[1], -1)
		replaceAllString := compile.ReplaceAllString(v[1], "$1$4")
		fmt.Printf("replaceAllString = %s\n", replaceAllString)
		//redio.Title = replaceAllString
		//fmt.Printf("A:%s  B:%s  C:%s  D:%s\n",v[4],v[6],v[8],v[10])
		for _, c := range submatch {
			//redio.Answer = c[2]
			fmt.Println(c[3])
		}
		//models.SaveRadio(redio)
	}
	urlMap.Store(url, 1)

	//<a href="/doc/94366972524de518974b7d79-18.html" class="next">下一页</a>
	//fmt.Println(string(all))
	nextRe := regexp.MustCompile(`</a><a href="(.*)" class="next">`)
	nextUrl := nextRe.FindAllStringSubmatch(string(all), -1)
	fmt.Println(rootUrl + nextUrl[0][1])
	gogogo(rootUrl + nextUrl[0][1])

}
