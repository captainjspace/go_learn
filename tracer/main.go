package main

import (
	"fmt"
)

type gridcell struct {
	X int
	Y int
}


func trace(s string)   { fmt.Println("entering:", s) }
func untrace(s string) { fmt.Println("leaving:", s) }

// Use them like this:
func a() {
    trace("a")
    defer untrace("a")
    
	grid := []gridcell{}

	for i:=0;i<100;i++ {
		g:=gridcell{i,i}
		grid=append(grid,g)
	}
	fmt.Printf("GRID\n %v \n", grid)
}

func main() {
	a()
}