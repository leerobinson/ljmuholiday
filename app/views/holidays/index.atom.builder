atom_feed do |feed|
	feed.title("LJMU Holiday Requests Feed")
	feed.updated(@holiday.first.created_at)
	@holiday.each do |holiday|
	feed.entry(holiday) do |entry|
		entry.title(holiday.user.username)
		entry.content(holiday.startdate, :type => 'html')
	end
   end
end
		
