require 'minitest/autorun'
require 'rake'

class TestNewProject < MiniTest::Unit::TestCase
  def setup
    #write setup stuff here
  end

  def teardown
    #write teardown stuff here
  end

  def test_multiples_below_10
    assert_equal "23", `./multiples_of_3_and_5.sh 10`
  end

  def test_multiples_below_1000
    assert_equal "233168", `./multiples_of_3_and_5.sh 1000`
  end
end
