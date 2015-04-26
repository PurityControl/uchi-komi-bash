require 'minitest/autorun'
require 'rake'

class TestSmallestMultipleProduct < MiniTest::Unit::TestCase
  def setup
    #write setup stuff here
  end

  def teardown
    #write teardown stuff here
  end

  def test_smallest_multiple_10
    assert_equal "2520", `./smallest_multiple.sh 10`.split.join(' ')
  end

  def test_smallest_multiple_euler
    #skip
    assert_equal "232792560", `./smallest_multiple.sh 20`.split.join(' ')
  end
end
