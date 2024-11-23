package behavior

// Strategy Interface
type QuackBehavior interface {
	Quack()
}

// Concrete Strategies
type Quack struct{}
type Squeak struct{}
type MuteQuack struct{}

func (q *Quack) Quack() {
	println("Quack")
}

func (q *Squeak) Quack() {
	println("Squeak")
}

func (q *MuteQuack) Quack() {
	println("<< Silence >>")
}
