module Ejercicio01 (inicio) where 

-- Estructura Producto
data Producto = Producto {
    nombre :: String,
	descripcion :: String,
	precio :: Int
} deriving Show

reduce :: (a -> a -> a) -> [a] -> a
reduce f [a] = a
reduce f xs =
    reduce f ((f (head xs) (xs !! 1):drop 2 xs))
                     
calcularMontoFactura listaProductos =
    map articulos listaProductos 
    where
        articulos articulo = ((precio articulo))

inicio :: IO ()
inicio = do
    let rangoPagoImpuestos = 20000
    let porcentajeImpuesto = 13
    
    let productos = [
            (Producto "tarjeta madre" "Asus" 54200),
            (Producto "mouse" "alámbrico" 15000),
            (Producto "teclado" "gamer con luces" 30000),
            (Producto "memoria ssd" "2 gb" 65000),
            (Producto "cable video" "display port 1m" 18000)]
        
    print("El monto total de la factura sin impuestos es: ")
    print(reduce (+) (calcularMontoFactura productos))

    print("El monto de la factura con impuesto es de:")
    print((reduce (+) (calcularMontoFactura productos)) + ((reduce (+) (map (13 *) (filter (> rangoPagoImpuestos) (calcularMontoFactura productos)))) `div` 100))

{-
Resultado que muestra el codigo
"El monto total de la factura sin impuestos es: "
182200
"El monto de la factura con impuesto es de:"
201596
-}