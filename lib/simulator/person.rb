module PopulationGrowthSimulator
  class Person
    def initialize(gender, age, health=100, health_modifier=[], ability=100, ability_modifier=[])
      @gender = gender
      @age = age
      @health = health
      @health_modifiers = health_modifier
      @ability = ability
      @ability_modifiers = ability_modifier
    end
    attr_reader :gender
    attr_reader :age
    
    public
    def increase_age(days=0, months=0, years=0)
      adj = (days*MILLI_PER_DAY) + (months*MILLI_PER_MONTH) + (years*MILLI_PER_YEAR)
      @age += adj
    end
    
    def get_age_tuple
      years = (@age/MILLI_PER_YEAR).to_i
      remainder = @age%MILLI_PER_YEAR
      
      months = (remainder/MILLI_PER_MONTH).to_i
      remainder %= MILLI_PER_MONTH
      
      days = (remainder/MILLI_PER_DAY).to_i

      return [years, months, days]
    end
    
    def get_health()
      health = @health
      @health_modifiers.each do |mod|
        health *= mod.value
      end
      
      return health
    end
    
    def get_ability()
      ability  = @ability
      @ability_modifiers.each do |mod|
        ability *= mod.value
      end
      
      return health
    end
    
    def fage
      age_tuple = get_age_tuple
      return "#{age_tuple[0]} years, #{age_tuple[1]} months, #{age_tuple[2]} days"
    end
  end
end
