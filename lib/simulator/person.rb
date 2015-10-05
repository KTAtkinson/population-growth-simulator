module PopulationGrowthSimulator
  class Person
    def initialize(gender, age, health=100, health_modifier=1, ability=100, ability_modifier=1)
      @gender = gender
      @age = age
      @health = health
      @health_modifier = health_modifier
      @ability = ability
      @ability_modifier = ability_modifier
    end
    attr_reader :gender
    attr_reader :age
    
    public
    def increase_age(days=0, months=0, years=0)
      adj = days*MILLI_PER_DAY + months*MILLI_PER_MONTH + years*MILLI_PER_YEAR
      @age += adj
    end
  end
end
