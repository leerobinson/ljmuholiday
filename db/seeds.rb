require 'faker'
require 'populator'
require 'sha1'

10.times do
  user = User.new
  user.username = Faker::Internet.user_name
  user.email = Faker::Internet.email
  user.password = "password"
  user.password_confirmation = "password"
  user.save
end

User.all.each do |user|
 Holiday.populate(5..10) do |holiday|
  holiday.amountofdays = Faker::Lorem.sentence
  holiday.startdate = DateTime.now
  holiday.enddate = DateTime.now + 8
  holiday.user_id = user.id
 end
end

	
