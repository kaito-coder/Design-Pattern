package duck

import "duckapp/behavior"

type MallardDuck struct {
	Duck
}

func NewMallardDuck() *MallardDuck {
	mallard := &MallardDuck{}
	mallard.SetFlyBehavior(&behavior.FlyWithWings{})
	mallard.SetQuackBehavior(&behavior.Quack{})
	return mallard
}

func (m *MallardDuck) Display() {
	println("I'm a real Mallard duck")
}
