package main

import (
	"context"
	"fmt"
	"time"
)

func main(){
	ctx := context.Background()
	fmt.Println(ctx.Done())
	go cts1(ctx)

	time.Sleep(time.Second)
}

func cts1(ctx context.Context)  {
	cancel, _ := context.WithCancel(ctx)
	fmt.Printf("%+v",cancel.Done())
}
