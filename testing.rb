require 'test/unit'

class Person

	attr_reader :first_name, :middle_name, :last_name
	attr_accessor :nationality
	
	def initialize (first_name, middle_name, last_name)
	
		@first_name = first_name
		@middle_name = middle_name
		@last_name = last_name
		
	
	end
	
	def full_name
	
		if middle_name.length > 1
		
		first_name + " " + middle_name + " " + last_name
		
		else
		
		first_name + " " + last_name
		
		end
		
	end

end

class MyTests < Test::Unit::TestCase

	def setup
	
		@person = Person.new("Lee", "N","Robinson")
		@person.nationality = "British"
	
	end
	
	def test_full_name
	
		assert_equal("Lee N Robinson", @person.full_name)
	
	end
	
	def test_nationality
	
		assert_equal("British", @person.nationality)
	
	end
end

