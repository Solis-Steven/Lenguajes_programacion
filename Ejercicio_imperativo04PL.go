/*
Escriba un programa que utilice una estructura y un arreglo/slice para 
almacenar en memoria un inventario de una tienda que vende zapatos. 
Cada zapato debe contar con la información de su modelo (marca), su precio 
y la talla del mismo que debe ir únicamente del 34 al 44. La estructura debe 
llamarse "calzado". El programa debe poder almacenar la información “quemada” 
\para 10+ zapatos del inventario y un stock de N cantidad de unidades de 
dicho zapato (quiere decir por ejemplo que puede existir en inventario el zapato 
marca Nike, talla 42 y que cuesta 50000 colones, pero además que puede existir n
o solo un par de esos, si no N pares del mismo zapato). 

Haga una función que venda zapatos (eliminando del stock cada vez que haya venta e 
	indicando que no se puede vender porque ya o hay stock) y pruébela dentro del 
	main haciendo las ventas que usted considere para demostrar su funcionamiento.
*/

package main

import (
	"fmt"
)

type footwear struct {
	brand string
	price int
	size  int
	stock int
}

type shoes  []footwear
var lShoes shoes

func (l *shoes) searchShoe(brand string, size int) int { 
	result := -1

	for i := 0; i < len(*l); i++ {
		if (*l)[i].brand == brand && (*l)[i].size == size{
			result = i
		}
	}
	return result
}

func (l *shoes) addShoe(brand string, price int, size int, stock int) {
	index := l.searchShoe(brand, size)

	if index != -1 {
		(*l)[index].stock += stock
	} else {
		if 34 <= size && size <= 44 {
			(*l) = append((*l), footwear{brand: brand, price: price, size: size, stock: stock})
		} else {
			fmt.Println("Shoe size is not valid, only 34 to 44 is allowed")
		}
	}
	
}

func (l *shoes) sellShoe(brand string, size int, quantity int) {
	index := l.searchShoe(brand, size)

	if index != -1 {
		if (*l)[index].stock >= quantity {
			(*l)[index].stock -= quantity

			if (*l)[index].stock <= 0 {
				(*l) = append((*l)[:index], (*l)[index + 1:]...)
			}
		} else {
			fmt.Println("Not enough stock")
		}
	} else {
		fmt.Println("The shoe doesn't exist")
	}
}

func main() {
	lShoes.addShoe("nike", 50000, 34, 50)
	lShoes.addShoe("nike", 55000, 40, 20)
	lShoes.addShoe("nike", 60000, 44, 15)
	lShoes.addShoe("nike", 60000, 44, 15)
	lShoes.addShoe("adidas", 28000, 41, 10)
	lShoes.addShoe("adidas", 28000, 41, 15)
	lShoes.addShoe("puma", 15000, 37, 7)
	lShoes.addShoe("puma", 20000, 42, 5)
	lShoes.addShoe("vans", 25000, 41, 35)
	lShoes.addShoe("vans", 25000, 41, 35)
	lShoes.addShoe("converse", 15000, 35, 2)
	lShoes.addShoe("reebok", 42000, 43, 8)
	lShoes.addShoe("reebok", 37500, 37, 10)

	fmt.Println("Original slice", lShoes)

	lShoes.sellShoe("nike", 33, 1)
	lShoes.sellShoe("nike", 34, 10)
	lShoes.sellShoe("converse", 35, 2)

	fmt.Println("Slice with sales", lShoes)
}

/*
Result:
Original slice [{nike 50000 34 50} {nike 55000 40 20} {nike 60000 44 30} {adidas 28000 41 25} {puma 15000 37 7} {puma 20000 42 5} {vans 25000 41 70} {converse 15000 35 2} {reebok 42000 43 8} {reebok 37500 37 10}]
The shoe doesn't exist
Slice with sales [{nike 50000 34 40} {nike 55000 40 20} {nike 60000 44 30} {adidas 28000 41 25} {puma 15000 37 7} {puma 20000 42 5} {vans 25000 41 70} {reebok 42000 43 8} {reebok 37500 37 10}]
*/