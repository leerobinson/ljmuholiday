class Holiday < ActiveRecord::Base

    belongs_to :user
    
    validates_presence_of :amountofdays
    validates_presence_of :startdate
    validates_presence_of :enddate
    	
    validates_length_of :amountofdays, :minimum =>1

	has_attached_file :photo, :styles => { :small => "150x150>" },
                  :url  => "/assets/holidays/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/holidays/:id/:style/:basename.:extension"

#validates_attachment_presence :photo
validates_attachment_size :photo, :less_than => 50.megabytes
validates_attachment_content_type :photo, :content_type => ['image/jpg', 'image/png']
    
    def self.search(search, page)
      paginate :per_page => 10, :page => params[:page]
    end

end
