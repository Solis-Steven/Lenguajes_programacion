/* 
Haga un programa que cuente e indique el número de caracteres, 
el número de palabras y el número de líneas de un texto cualquiera 
(obtenido de cualquier forma que considere). Considere hacer el cálculo 
de las tres variables en el mismo proceso
*/

package main

import (
	"fmt"
	"strings"
)


func count(text string) {
	characters := 0
	words := strings.Split(text, " ")
	rows := 1

	for i := 0; i < len(text); i++ {
		characters++

		if text[i] == 10 {
			rows++
			characters--
		}
    }

	fmt.Println("The number of characters is: ", characters)
	fmt.Println("The number of words is: ", len(words))
	fmt.Println("The number of rows is: ", rows)

}

func main() {
	count("Hello world\n My name is Steven\n This is my first project in go")
}

/*
Result:
The number of characters is:  60
The number of words is:  13
The number of rows is:  3  
*/