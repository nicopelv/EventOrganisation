class ContributionsEvent < ActiveRecord::Base
    belongs_to :event
    belongs_to :contribution
end
