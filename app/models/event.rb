class Event < ActiveRecord::Base
    has_many :contributions_events
    has_many :contributions, through: :contributions_events
    
    accepts_nested_attributes_for :contributions_events
end
