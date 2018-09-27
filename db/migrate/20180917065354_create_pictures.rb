class CreatePictures < ActiveRecord::Migration[5.1]
  def change
    create_table :pictures do |t|
      t.integer :imageable_id
      t.string :imageable_type
      t.string :name
      t.timestamps
    end
    add_index :pictures, [:imageable_id, :imageable_type]
  end
end
