class Contribution < ActiveRecord::Base
    
    scope :officials, -> { where(officialContribution: true) }    
    
end
