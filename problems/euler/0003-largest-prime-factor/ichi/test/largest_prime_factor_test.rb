require 'minitest/autorun'
require 'rake'

class TestLargestPrimeFactor < MiniTest::Unit::TestCase
  def setup
    #write setup stuff here
  end

  def teardown
    #write teardown stuff here
  end

  def test_largest_prime_factor_for_600851475143
    assert_equal "6857\n", `./largest_prime_factor.sh 600851475143`
  end

end

