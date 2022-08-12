/*
Escriba una función que permita rotar una secuencia de elementos N posiciones
a la izquierda o a la derecha según sea el caso en función al parámetro que
se reciba. Los parámetros deben ser un puntero a un arreglo previamente creado, la
cantidad de movimiento de rotación y la dirección (0 = izq y 1 = der).

A partir de esta función, escriba un programa que haga varias rotaciones cualesquiera
de una secuencia de elementos previamente creada que sea inmutable. Al final debe
imprimirse el resultado de cada rotación además de la secuencia original.

Un ejemplo de rotación puede ser el siguiente:
Secuencia Original = [a, b, c, d, e, f, g, h,]
Cantidad de rotaciones = 3
Dirección = izq
Secuencia final rotada = [d, e, f, g, h, a, b, c]   Nótese que cada iteración, el elemento más a la izquierda pasó a formar parte del final de la secuencia, si la rotación fuera a la derecha, sería lo contrario

*/

package main

import (
	"fmt"
)

func rotate(l *[]string, movements int, direction int) {
	if direction == 1 {
		movements = len(*l) - movements % len(*l)
		(*l) = append((*l)[movements:], (*l)[:movements]...)
	} else {
		for i := 0; i < movements; i++ {
			newL := (*l)[1:len(*l)]
			newL = append(newL, (*l)[0])
			(*l) = newL
		}
	}
}

func main() {
	firstList := []string{"a", "b", "c", "d", "e", "f", "g"}
	secondList := []string{"1", "2", "3", "4", "5"}
	fmt.Println("Unrotated first list: ", firstList)
	rotate(&firstList, 3, 0)
	fmt.Println("Rotated first list: ", firstList)

	fmt.Println("Unrotated second list: ", secondList)
	rotate(&secondList, 2, 1)
	fmt.Println("Rotated second list: ", secondList)
}

/*
Result:
Unrotated first list:  [a b c d e f g]
Rotated first list:  [d e f g a b c]
Unrotated second list:  [1 2 3 4 5] 
Rotated second list:  [4 5 1 2 3] 
*/
