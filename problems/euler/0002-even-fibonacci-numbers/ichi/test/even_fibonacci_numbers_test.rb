require 'minitest/autorun'
require 'rake'

class TestNewProject < MiniTest::Unit::TestCase
  def setup
    #write setup stuff here
  end

  def teardown
    #write teardown stuff here
  end

  def test_even_fibonaccis_to_4000000
    assert_equal "4613732\n", `./even_fibonacci_numbers.sh 4000000`
  end

end
