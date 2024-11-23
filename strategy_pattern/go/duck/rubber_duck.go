package duck

import "duckapp/behavior"

type RubberDuck struct {
	Duck
}

func NewRubberDuck() *RubberDuck {
	rubber := &RubberDuck{}
	rubber.SetFlyBehavior(&behavior.FlyNoWay{})
	rubber.SetQuackBehavior(&behavior.Squeak{})
	return rubber
}

func (r *RubberDuck) Display() {
	println("I'm a rubber duckie")
}
