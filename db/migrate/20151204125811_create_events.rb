class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :eventday
      t.string :place
      t.decimal :longitude
      t.decimal :latitude

      t.timestamps null: false
    end
  end
end
