class Holiday < ActiveRecord::Base

    belongs_to :user
    
    validates_presence_of :amountofdays
    validates_presence_of :startdate
    validates_presence_of :enddate
    
    validates_length_of :amountofdays, :minimum =>1
    
    def self.search(search, page)
      paginate :per_page => 10, :page => params[:page]
    end

end
