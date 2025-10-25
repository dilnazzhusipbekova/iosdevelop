//
//  main.swift
//  ShoppingCart
//
//  Created by Dilnaz Zhussipbekova on 23.10.2025.
//

import Foundation

let lipstick = Product(id: "1", name: "Помада Rouge Velvet", price: 29.99, category: .cosmetics, description: "Матовая помада с насыщенным оттенком")!
let cream = Product(id: "2", name: "Крем для лица HydraBoost", price: 45.50, category: .skincare, description: "Увлажняющий крем для сухой кожи")!
let perfume = Product(id: "3", name: "Духи «Eau de Lumière»", price: 89.00, category: .perfume, description: "Цветочно-фруктовый аромат")!
let bag = Product(id: "4", name: "Косметичка TravelPro", price: 15.00, category: .accessories, description: "Компактная дорожная косметичка")!

let cart = ShoppingCart()
cart.addItem(product: lipstick, quantity: 2)
cart.addItem(product: cream, quantity: 1)
cart.addItem(product: perfume, quantity: 1)

print("Сумма без скидки:", cart.subtotal)
print("Всего товаров в корзине:", cart.itemCount)

cart.discountCode = "SAVE10"
print("Итого со скидкой:", cart.total)

cart.removeItem(productId: cream.id)
print("После удаления крема, товаров осталось:", cart.itemCount)

func modifyCart(_ cart: ShoppingCart) {
    cart.addItem(product: bag, quantity: 1)
}
var item1 = CartItem(product: lipstick, quantity: 1)
var item2 = item1
item2.updateQuantity(5)
print("Количество в 1 =", item1.quantity, ", а в 2 =", item2.quantity) // структура — значимый тип

let address = Address(street: "ул. Цветочная, 12", city: "Санкт-Петербург", zipCode: "190000", country: "Россия")
let order = Order(from: cart, shippingAddress: address)
cart.clearCart()

print("Товаров в заказе:", order.itemCount)
print("Товаров в корзине после очистки:", cart.itemCount)
