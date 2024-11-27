package coffee.condiment;

import coffee.beverage.*;

public abstract class CondimentDecorator extends Beverage {
    protected Beverage beverage;
    public abstract String getDescription();
}
