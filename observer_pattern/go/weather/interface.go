package weather

type Subject interface {
	RegisterObserver(observer Observer)
	RemoveObserver(observer Observer)
	NotifyObservers()
}

type Observer interface {
	Update(data MeasurementData)
	GetID() string
}

type DisplayElement interface {
	Display()
}

type MeasurementData struct {
	Temperature float64
	Humidity    float64
	Pressure    float64
}
