require 'spec_helper'

module PopulationGrowthSimulator

  describe Person do
    person  = Person('female', {'years'=>15, 'months'=>10, 'days'=>10})
    
    describe 'age' do
      it 'increases the persons age by the given number of days' do
        age_by = 30
        new_age = person.age? + (86400000 * age_by)
        person.age(age_by)
        expect(person.age?).to equal(new_age)
      end
    end
  end
end
  
