package main

import (
	"fmt"
	"sort"
)

type producto struct {
	nombre   string
	cantidad int
	precio   int
}
type listaProductos []producto

var lProductos listaProductos

var path = "productos.txt"

const existenciaMinima int = 10 //la existencia mínima es el número mínimo debajo de el cual se deben tomar eventuales desiciones

func (l *listaProductos) agregarProducto(nombre string, cantidad int, precio int) {
	indice := (*l).buscarProducto(nombre)

	if indice != -1 {
		(*l)[indice].cantidad += cantidad
		if (*l)[indice].precio != precio {
			(*l)[indice].precio = precio
		}
	} else {
		(*l) = append((*l), producto{nombre: nombre, cantidad: cantidad, precio: precio})
	}
	// modificar el código para que cuando se agregue un producto, si este ya se encuentra, incrementar la cantidad
	// de elementos del producto y eventualmente el precio si es que es diferente
}

func (l *listaProductos) buscarProducto(nombre string) int { //el retorno es el índice del producto encontrado y -1 si no existe
	var result = -1
	var i int
	for i = 0; i < len(*l); i++ {
		if (*l)[i].nombre == nombre {
			result = i
		}
	}
	return result
}

func (l *listaProductos) venderProducto(nombre string, cant int) {
	var prod = l.buscarProducto(nombre)
	if prod != -1 && cant > 0 {
		if (*l)[prod].cantidad >= cant {
			(*l)[prod].cantidad = (*l)[prod].cantidad - cant

			if (*l)[prod].cantidad == 0 {
				(*l) = append((*l)[:prod], (*l)[prod + 1:]...)
			}
		} else {
			fmt.Println("No se puede vender mayor cantidad de productos que los que hay en existencia")
		}

		//modificar para que cuando no haya existencia de cantidad de productos, el producto se elimine de "la lista"
	}
}
func llenarDatos() {
	lProductos.agregarProducto("arroz", 15, 2500)
	lProductos.agregarProducto("frijoles", 4, 2000)
	lProductos.agregarProducto("leche", 8, 1200)
	lProductos.agregarProducto("café", 12, 4500)
}

func (l *listaProductos) listarProductosMínimos() listaProductos {
	// debe retornar una nueva lista con productos con existencia mínima
	var lProductosMinimos listaProductos
	for i := 0; i < len(*l); i++ {
		if (*l)[i].cantidad < existenciaMinima {
			lProductosMinimos = append(lProductosMinimos, (*l)[i])
		}
	}
	return lProductosMinimos
}

func (l *listaProductos) aumentarInventarioDeMinimos() {
	listaMinimos := l.listarProductosMínimos()

	for i := 0; i < len(listaMinimos); i++ {
		(*l)[i].cantidad += existenciaMinima - (*l)[i].cantidad
	}
}

func (l *listaProductos) ordenar() {
	sort.Slice(*l,func(i, j int) bool { return (*l)[i].precio < (*l)[j].precio})
}

func main() {
	llenarDatos()
	fmt.Println(lProductos)
	lProductos.venderProducto("arroz", 6)
	fmt.Println(lProductos)
	lProductos.agregarProducto("azucar", 20, 1500)
	fmt.Println(lProductos)
	lProductos.venderProducto("frijoles", 4)
	fmt.Println(lProductos)
	lProductos.venderProducto("leche", 10)
	fmt.Println(lProductos.listarProductosMínimos())
	lProductos.aumentarInventarioDeMinimos()
	fmt.Println(lProductos)
	lProductos.ordenar()
	fmt.Println(lProductos)
}
 