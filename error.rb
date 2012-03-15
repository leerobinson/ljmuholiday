require 'test/unit'

class MyTests < Test::Unit::TestCase

	def test_addition_expected_to_be_correct
	
	assert(2 + 2 == 4)
	
	end
	
	def test_addition_expected_to_be_incorrect
	
	assert(2 + 2 == 5)
	
	end
	
	def test_length_of_string
	
	assert_equal(3, "lee".length)
	
	end
	
	def test_addition_using_the_assert_equal
	
	assert(7, 3 + 4)
	
	end
	
	def test_numerical_order_expected_to_be_correct
	
	array = [1,2,3]
	assert_equal(array.sort,array)
	
	end
	
	def test_numerical_order_expected_to_be_wrong
	
	array = [2,4,1]
	
	assert_equal(array.sort,array)
	
	end

end
