package duck

import "duckapp/behavior"

type Duck struct {
	flyBehavior   behavior.FlyBehavior
	quackBehavior behavior.QuackBehavior
}

func (d *Duck) PerformFly() {
	d.flyBehavior.Fly()
}

func (d *Duck) PerformQuack() {
	d.quackBehavior.Quack()
}

func (d *Duck) SetFlyBehavior(fb behavior.FlyBehavior) {
	d.flyBehavior = fb
}

func (d *Duck) SetQuackBehavior(qb behavior.QuackBehavior) {
	d.quackBehavior = qb
}

func (d *Duck) Swim() {
	println("All ducks float, even decoys!")
}

func (d *Duck) Display() {
	println("I'm a duck!")
}
