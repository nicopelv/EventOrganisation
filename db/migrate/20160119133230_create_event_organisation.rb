class CreateEventOrganisation < ActiveRecord::Migration
  def change
    create_table :contributions_events do |t|
       t.belongs_to :event, index: true
       t.belongs_to :contribution, index: true
    end
  end
end
