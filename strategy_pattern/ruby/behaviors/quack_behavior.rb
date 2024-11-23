module QuackBehavior
  class Quack
    def quack
      puts 'Quack! Quack!'
    end
  end

  class Squeak
    def quack
      puts 'Squeak!'
    end
  end

  class MuteQuack
    def quack
      puts '<< Silence >>'
    end
  end
end
