require 'minitest/autorun'
require 'rake'

class Test1001stPrime < MiniTest::Unit::TestCase
  def setup
    #write setup stuff here
  end

  def teardown
    #write teardown stuff here
  end

  def test_6th_prime
    assert_equal "13", `./nth_prime.sh 6`
  end

  def test_prime_euler
    #skip
    assert_equal "104743", `./nth_prime.sh 10001`
  end
end
