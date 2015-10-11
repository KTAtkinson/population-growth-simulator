require 'spec_helper'

module PopulationGrowthSimulator

  describe Person do
    
    describe 'increase_age' do
      it 'increases the persons age by the given number of days' do
        person = Person.new(Gender::FEMALE, 0)
        age_by = 30
        new_age = MILLI_PER_DAY * age_by
        person.increase_age(days=age_by)
        expect(person.age).to eq(new_age)
      end
      it 'increases the persons age by the given number of years' do
        person = Person.new(Gender::FEMALE, 0)
        age_by = 30
        new_age = MILLI_PER_YEAR*age_by
        person.increase_age(days=0, months=0, years=age_by)
        expect(person.age).to eq(new_age)
      end
    end
    
    describe 'get_age_tuple' do
      it 'returns tuple containing years, month, age' do
        age = MILLI_PER_YEAR + MILLI_PER_MONTH + MILLI_PER_DAY
        person = Person.new(Gender::FEMALE, age)
        expect(person.get_age_tuple).to eq([1, 1, 1])
      end
      it 'returns correct tuple when age is high' do
        years = 105
        months = 10
        days = 28
        age = (years*MILLI_PER_YEAR) + (months*MILLI_PER_MONTH) + (days*MILLI_PER_DAY)
        person = Person.new(Gender::FEMALE, age)
        expect(person.get_age_tuple).to eq([years, months, days])
      end
    end
  end
end
  
