require 'minitest/autorun'
require 'rake'

class TestLargestPalindromeProduct < MiniTest::Unit::TestCase
  def setup
    #write setup stuff here
  end

  def teardown
    #write teardown stuff here
  end

  def test_multiples_below_1000
    assert_equal "906609", `./largest_palindrome_product.sh 100 999`
  end
end
