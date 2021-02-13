package main


import (
	"fmt"
	"rsc.io/quote"
	"example.com/greetings"
	"log"
	"os"
)

func greet(name string) {
	message, err:=greetings.Hello(name)	
	
	if err != nil {
		log.Fatal(err)
	}

	fmt.Println(message)
}

func main() {

	log.SetPrefix("greetings: ")
    log.SetFlags(0)

	fmt.Println("Hello World")
	fmt.Println(quote.Go())
    
	names := []string {
		"Ex Machine",
		"Savannah Devilla",
		"Porky Nomadic",
	}
	
	for _, v := range names {
		greet(v)
	}

	messages, err := greetings.Hellos(names)
	if err != nil {
		log.Fatal(err)
	}
	
	for k, v := range messages {
		//fmt.Println(k)
		fmt.Fprintf(os.Stderr, "key %v --- value: %v\n",k,v)
	}

	//greet("")

}
