package main

import (
	"github.com/fatih/color"
	"time"
)

func main() {
	for {
		color.Cyan("Hey there!")
		time.Sleep(time.Second)
	}
}
