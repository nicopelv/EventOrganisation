class Contribution < ActiveRecord::Base
    has_many :contributions_events
    has_many :events, through: :contributions_events
    scope :officials, -> { where(officialContribution: true) }    
end
