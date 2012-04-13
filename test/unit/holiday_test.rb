require File.dirname(__FILE__) + "/../test_helper"

class HolidayTest < ActiveSupport::TestCase

	def create_holiday(attributes = {})
	
		attributes[:startdate] ||= '10/04/2012'
		attributes[:enddate] ||= '18/04/2012'
		attributes[:amountofdays] ||= '8'
		attributes[:user_id] ||= '1'
		holiday = Holiday.new(attributes)
		holiday
	end
  
end
