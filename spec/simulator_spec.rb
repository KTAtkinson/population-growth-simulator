require 'spec_helper'

require_relative '../simulator/simulator.rb'

describe returnNil do
  context 'when called' do
    it 'returns nil' do
      output = returnNil
      expect(output).to eq nil
    end
  end
end
