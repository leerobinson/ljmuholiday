class Holiday < ActiveRecord::Base

    belongs_to :user
    
    validates_presence_of :userid
    validates_presence_of :name
    validates_presence_of :amountofdays
    validates_presence_of :startdate
    validates_presence_of :enddate
    
    validates_length_of :userid, :minimum => 6
    validates_length_of :amountofdays, :minimum =>1

end
