# Strategy Pattern Implementation

This project demonstrates the Strategy Pattern using a classic Duck example implemented in multiple programming languages (Java, Go, and Ruby).

## Table of Contents

- [Overview](#overview)
- [Project Structure](#project-structure)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Strategy Pattern Explanation](#strategy-pattern-explanation)
- [Language-Specific Notes](#language-specific-notes)
- [Contributing](#contributing)
- [License](#license)

## Overview

The Strategy Pattern is a behavioral design pattern that enables you to define a family of algorithms, encapsulate each one, and make them interchangeable. This implementation uses the classic Duck example where different types of ducks have different flying and quacking behaviors.

### Key Components:

- Duck classes (abstract and concrete implementations)
- Flying behaviors
- Quacking behaviors

## Project Structure

```
strategy_pattern/
├── Makefile
├── README.md
├── java/
│   ├── src/
│   │   ├── behavior/
│   │   │   ├── FlyBehavior.java
│   │   │   ├── FlyWithWings.java
│   │   │   ├── FlyNoWay.java
│   │   │   ├── QuackBehavior.java
│   │   │   └── Quack.java
│   │   ├── duck/
│   │   │   ├── Duck.java
│   │   │   └── MallardDuck.java
│   │   └── MiniDuckSimulator.java
│   └── out/
├── go/
│   ├── behavior/
│   │   ├── fly_behavior.go
│   │   └── quack_behavior.go
│   ├── duck/
│   │   ├── duck.go
│   │   └── mallard_duck.go
│   └── main.go
└── ruby/
    ├── behaviors/
    │   ├── fly_behavior.rb
    │   └── quack_behavior.rb
    ├── duck.rb
    ├── mallard_duck.rb
    └── main.rb
```

## Prerequisites

- Java JDK 11 or later
- Go 1.16 or later
- Ruby 2.7 or later
- Make (for running the Makefile)

### Check your environment:

```bash
# Check Java version
java --version
javac --version

# Check Go version
go version

# Check Ruby version
ruby --version

# Check Make version
make --version
```

## Installation

1. Clone the repository:

```bash
git clone https://github.com/kaito-coder/Design-Pattern.git
cd strategy_pattern
```

2. Set up the project structure:

```bash
# Create directory structure
mkdir -p {java/{src/{behavior,duck},out},go/{behavior,duck},ruby/behaviors}
```

3. Copy the source files to their respective directories.

## Usage

### Using Make Commands

Run specific language implementations:

```bash
# Run Java implementation
make java

# Run Go implementation
make go

# Run Ruby implementation
make ruby

# Run all implementations
make all

# Clean build artifacts
make clean

# Show help
make help
```

### Manual Execution

#### Java

```bash
cd java
javac -d out src/behavior/*.java src/duck/*.java src/MiniDuckSimulator.java
java -cp out MiniDuckSimulator
```

#### Go

```bash
cd go
go run main.go
```

#### Ruby

```bash
cd ruby
ruby main.rb
```

## Strategy Pattern Explanation

The Strategy Pattern consists of three main components:

1. **Context (Duck)**: The class that contains a reference to a strategy.
2. **Strategy Interface**: Defines the interface for all concrete strategies.
3. **Concrete Strategies**: Implementations of the strategy interface.

### Example Flow:

```java
// Create a duck
Duck mallard = new MallardDuck();

// Use default behavior
mallard.performFly();    // Flies with wings
mallard.performQuack();  // Quacks normally

// Change behavior at runtime
mallard.setFlyBehavior(new FlyNoWay());
mallard.performFly();    // Cannot fly
```

## Language-Specific Notes

### Java Implementation

- Uses interfaces for behaviors
- Uses inheritance for Duck hierarchy
- Demonstrates runtime behavior changes

### Go Implementation

- Uses interfaces for behaviors
- Uses composition instead of inheritance
- Demonstrates Go's implicit interface implementation

### Ruby Implementation

- Uses modules for behavior organization
- Demonstrates duck typing
- Shows Ruby's dynamic nature in behavior modification

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
