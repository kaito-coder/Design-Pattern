package main

import (
	"coffee/coffee"
	"fmt"
)

func main() {
	var beverage coffee.Beverage
	beverage = coffee.NewHouseBlend()
	beverage = coffee.NewMocha(beverage)
	beverage = coffee.NewSoy(beverage)
	beverage = coffee.NewWhip(beverage)
	fmt.Printf("Description: %s\n", beverage.GetDescription())
	fmt.Printf("Cost: $%.2f\n", beverage.Cost())
}
