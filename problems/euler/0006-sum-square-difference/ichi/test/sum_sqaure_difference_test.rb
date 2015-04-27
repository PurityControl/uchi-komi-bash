require 'minitest/autorun'
require 'rake'

class TestSumSquareDifference < MiniTest::Unit::TestCase
  def setup
    #write setup stuff here
  end

  def teardown
    #write teardown stuff here
  end

  def test_smallest_multiple_10
    assert_equal "2640", `./sum_square_difference.sh 10`
  end

  def test_smallest_multiple_euler
    #skip
    assert_equal "25164150", `./sum_square_difference.sh 100`
  end
end
