class CreateAccommodations < ActiveRecord::Migration
  def change
    create_table :accommodations do |t|
      t.string :name
      t.string :address
      t.string :note
      t.references :city, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
