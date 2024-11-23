package behavior

// Strategy Interface
type FlyBehavior interface {
	Fly()
}

// Concrete Strategies
type FlyWithWings struct{}
type FlyNoWay struct{}
type FlyRocketPowered struct{}

func (f *FlyWithWings) Fly() {
	println("I'm flying!")
}

func (f *FlyNoWay) Fly() {
	println("I can't fly!")
}

func (f *FlyRocketPowered) Fly() {
	println("I'm flying with a rocket!")
}
