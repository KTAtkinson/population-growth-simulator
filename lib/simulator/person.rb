include Time

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
    
    public
    def fage(format)
      age.each {|incrament, value| format.gsub!('%' + incrament, value)}
      return format
    end
    
    def age(days=30)
      @age[days] += days
      if @age[days] > 30
        @age[months] += @age[days]/30
        @age[days] %= 30
      end
      if @age[months] > 12
        @age[years] += @age[months]/12
        @age[months] %= 12
      end
    end
    
    def age?()
      return Time.gm(year=@age[year], month=@age[month], day=@age[days]).to_i
    end
  end
end
