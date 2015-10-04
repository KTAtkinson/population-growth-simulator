module PopulationGrowthSimulator
  class Gender
    FEMALE = 0
    MALE = 1
    
    attr_reader :FEMALE
    attr_reader :MALE
  end
  
  MILLI_PER_DAY = 86400000
  MILLI_PER_MONTH = 2.62974e9
  MILLI_PER_YEAR = 3.156e+10
end
