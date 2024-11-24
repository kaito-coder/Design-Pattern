package weather

import "fmt"

type CurrentConditionsDisplay struct {
	id          string
	temperature float64
	humidity    float64
	pressure    float64
}

func NewCurrentConditionsDisplay(id string) *CurrentConditionsDisplay {
	return &CurrentConditionsDisplay{
		id: id,
	}
}

func (ccd *CurrentConditionsDisplay) Update(data MeasurementData) {
	ccd.temperature = data.Temperature
	ccd.humidity = data.Humidity
	ccd.pressure = data.Pressure
	ccd.Display()
}

func (ccd *CurrentConditionsDisplay) GetID() string {
	return ccd.id
}

func (ccd *CurrentConditionsDisplay) Display() {
	fmt.Printf("Current conditions: %.1fF degrees and %.1f%% humidity\n",
		ccd.temperature, ccd.humidity)
}

type StatisticsDisplay struct {
	id          string
	temperature float64
	humidity    float64
	pressure    float64
}

func NewStatisticsDisplay(id string) *StatisticsDisplay {
	return &StatisticsDisplay{
		id: id,
	}
}

func (sd *StatisticsDisplay) Update(data MeasurementData) {
	sd.temperature = data.Temperature
	sd.humidity = data.Humidity
	sd.pressure = data.Pressure
	sd.Display()
}

func (sd *StatisticsDisplay) GetID() string {
	return sd.id
}

func (sd *StatisticsDisplay) Display() {
	fmt.Printf("Avg/Max/Min temperature: %.1f/%.1f/%.1f\n",
		sd.temperature, sd.temperature, sd.temperature)
}

type ForecastDisplay struct {
	id          string
	temperature float64
	humidity    float64
	pressure    float64
}

func NewForecastDisplay(id string) *ForecastDisplay {
	return &ForecastDisplay{
		id: id,
	}
}

func (fd *ForecastDisplay) Update(data MeasurementData) {
	fd.temperature = data.Temperature
	fd.humidity = data.Humidity
	fd.pressure = data.Pressure
	fd.Display()
}

func (fd *ForecastDisplay) GetID() string {
	return fd.id
}

func (fd *ForecastDisplay) Display() {
	fmt.Printf("Forecast: Improving weather on the way!\n")
}
