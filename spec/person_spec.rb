require 'spec_helper'

module PopulationGrowthSimulator

  describe Person do
    let(:age) {MILLI_PER_YEAR+MILLI_PER_MONTH+MILLI_PER_DAY}
    let(:person) {Person.new(Gender::FEMALE, age)}
    
    describe 'increase_age' do
      it 'increases the persons age by the given number of days' do
        age_by = 30
        new_age = person.age + (MILLI_PER_DAY * age_by)
        person.increase_age(days=age_by)
        expect(person.age).to eq(new_age)
      end
    end
    
    describe 'get_age_tuple' do
      it 'returns tuple containing years, month, age' do
        expect(person.get_age_tuple).to eq([1, 1, 1])
      end
    end
  end
end
  
