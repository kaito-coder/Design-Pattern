package coffee

type Beverage interface {
	GetDescription() string
	Cost() float64
}

type BaseBeverage struct {
	description string
}

func (bb *BaseBeverage) GetDescription() string {
	return bb.description
}

type HouseBlend struct {
	BaseBeverage
}

func NewHouseBlend() *HouseBlend {
	return &HouseBlend{BaseBeverage{"House Blend"}}
}

func (hb *HouseBlend) Cost() float64 {
	return 0.89
}

type DarkRoast struct {
	BaseBeverage
}

func NewDarkRoast() *DarkRoast {
	return &DarkRoast{BaseBeverage{"Dark Roast"}}
}

func (dr *DarkRoast) Cost() float64 {
	return 0.99
}
