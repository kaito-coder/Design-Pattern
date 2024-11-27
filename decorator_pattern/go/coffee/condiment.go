package coffee

type BaseCondiment struct {
	Beverage    Beverage
	description string
}

func (bc *BaseCondiment) GetDescription() string {
	return bc.Beverage.GetDescription() + ", " + bc.description
}

type Mocha struct {
	BaseCondiment
}

func NewMocha(beverage Beverage) *Mocha {
	return &Mocha{BaseCondiment{beverage, "Mocha"}}
}

func (m *Mocha) Cost() float64 {
	return 0.20 + m.Beverage.Cost()
}

type Soy struct {
	BaseCondiment
}

func NewSoy(beverage Beverage) *Soy {
	return &Soy{BaseCondiment{beverage, "Soy"}}
}

func (s *Soy) Cost() float64 {
	return 0.15 + s.Beverage.Cost()
}

type Whip struct {
	BaseCondiment
}

func NewWhip(beverage Beverage) *Whip {
	return &Whip{BaseCondiment{beverage, "Whip"}}
}

func (w *Whip) Cost() float64 {
	return 0.10 + w.Beverage.Cost()
}