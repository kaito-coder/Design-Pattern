package main

import (
	"duckapp/behavior"
	"duckapp/duck"
)

func main() {
	mallard := duck.NewMallardDuck()
	rubber := duck.NewRubberDuck()

	mallard.Display()
	mallard.PerformFly()
	mallard.PerformQuack()

	rubber.Display()
	rubber.PerformFly()
	rubber.PerformQuack()

	// rubber can change its behavior at runtime
	rubber.SetFlyBehavior(&behavior.FlyRocketPowered{})
	rubber.PerformFly()

}
