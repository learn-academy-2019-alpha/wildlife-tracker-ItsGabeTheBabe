class CreateSightings < ActiveRecord::Migration[5.2]
  def change
    create_table :sightings do |t|
      t.date :date
      t.time :time
      t.integer :lat
      t.integer :long
      t.integer :animal_id
      t.timestamps
    end
  end
end
