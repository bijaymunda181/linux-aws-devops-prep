## plain variable
variable "fruit_name" {
  default = "apple"
}

output "fruit_name" {
  value = var.fruit_name
}

## List variable
variable "fruits" {
  default = [
    "apple",
    "banana"
  ]
// default = [ "apple", "banana" ] // single line syntax
}

## map variable, plain

variable "fruit_stock" {
  default = {
    apple = 100
    banana = 200
  }
}

## map variable, map of map

variable "fruit_stock_with_price" {
  default = {
    apple = {
      stock = 500
      price = 5
    }
    banana = {
      stock = 1000
      price = 3
    }
  }
}

## Access a list variable, list index starts from zero

output "fruit_first" {
  value = var.fruits[0]
}

output "fruit_second" {
  value = var.fruits[1]
}

## Access a map variable, plain

output "fruit_stock_apple" {
  value = var.fruit_stock["apple"]
}

## Access map of map variable

output "fruit_stock_with_price_apple" {
  value = var.fruit_stock_with_price.apple.stock
}

## variable Data type

variable "fruit_details" {
  default = {
    apple = {
      stock = 100         # number
      type = "washington" # string
      for_sale = true     # boolean
    }
  }
}

# variable in a combination of any other string then need to be with in ${}
output "fruit_name_1" {
  value = "Fruit Name =  ${var.fruit_name}"
}


output "fruit_details_apple" {
  value = "Apple stock = ${var.fruit_details.apple.stock} , Apple type = ${var.fruit_details.apple.type} , Apple sale status = ${var.fruit_details.apple.for_sale}"
}