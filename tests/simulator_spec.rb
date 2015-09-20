require 'testing/unit'
require 'simulator'

class TestBuild < Test::unit::TestCase
  def testReturnNil
    result = simulator.returnNil
    assertEqual result, nil
  end
end
