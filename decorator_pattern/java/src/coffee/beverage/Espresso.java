package coffee.beverage;

public class Espresso extends Beverage {
    public Espresso() {
        description = "Espresso Coffee";
    }
    
    public double cost() {
        return 1.05;
    }
}