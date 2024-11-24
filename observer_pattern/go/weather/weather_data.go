package weather

type WeatherData struct {
	temperature float64
	humidity    float64
	pressure    float64
	observers   map[string]Observer
}

func NewWeatherData() *WeatherData {
	return &WeatherData{
		observers: make(map[string]Observer),
	}
}

func (wd *WeatherData) RegisterObserver(observer Observer) {
	wd.observers[observer.GetID()] = observer
}

func (wd *WeatherData) RemoveObserver(observer Observer) {
	delete(wd.observers, observer.GetID())
}

func (wd *WeatherData) NotifyObservers() {

	data := MeasurementData{
		Temperature: wd.temperature,
		Humidity:    wd.humidity,
		Pressure:    wd.pressure,
	}

	for _, observer := range wd.observers {
		observer.Update(data)
	}
}

func (wd *WeatherData) SetMeasurements(temperature, humidity, pressure float64) {
	wd.temperature = temperature
	wd.humidity = humidity
	wd.pressure = pressure
	wd.NotifyObservers()
}
