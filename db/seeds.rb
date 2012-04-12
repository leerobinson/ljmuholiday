require 'faker'
require 'populator'
require 'sha1'

Holiday.destroy_all


User.all.each do |user|
 Holiday.populate(1) do |holiday|
  holiday.amountofdays = Integer(8)
  holiday.startdate = DateTime.now
  holiday.enddate = DateTime.now + 8
  holiday.user_id = user.id
 end
end
	
