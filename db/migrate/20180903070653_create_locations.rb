class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :loc_name
      t.string :city
      t.string :state
      t.string :zipcode
      t.references :user, index: true, foreign_key: true
      t.timestamps
    end
  end
end
