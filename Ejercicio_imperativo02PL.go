/*
Escriba el programa más eficiente que pueda para imprimir en pantalla la siguiente figura: 
   *
  ***
 *****
  ***
   *   
Para dicho fin, escriba y use una función que reciba de parámetro la cantidad de elementos 
de la línea del centro, la cual debe ser impar positiva.
*/

package main

import (
	"fmt"
	// "math"
)

func printFigure(middleRow int) {
	spaces :=  middleRow / 2
	for i := 1; i <= middleRow; i += 2 {

		for j := spaces; j > 0 ; j--{
			fmt.Print("  ")
		}

		for a := 0; a < i; a++ {
			fmt.Print("* ")
		}
		fmt.Println()
		spaces--
	} 

	spaces = 1
	cont := middleRow - 2

	for i := 1; i < middleRow; i += 2 {

		for j := 0; j < spaces ; j++{
			fmt.Print("  ")
		}

		for a := cont; a > 0; a-- {
			fmt.Print("* ")
		}
		fmt.Println()
		spaces++
		cont -= 2
	} 
}

func main() {
	printFigure(9)
}

/*
Result:
        *         
      * * *       
    * * * * *     
  * * * * * * *   
* * * * * * * * * 
  * * * * * * *   
    * * * * *     
      * * *       
        *   
*/