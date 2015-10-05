require 'spec_helper'

module PopulationGrowthSimulator

  describe Person do
    let(:person) {Person.new(Gender::FEMALE, 0)}
    
    describe 'increase_age' do
      it 'increases the persons age by the given number of days' do
        age_by = 30
        new_age = person.age + (MILLI_PER_DAY * age_by)
        person.increase_age(days=age_by)
        expect(person.age).to eq(new_age)
      end
    end
  end
end
  
