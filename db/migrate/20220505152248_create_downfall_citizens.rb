class CreateDownfallCitizens < ActiveRecord::Migration[7.0]
  def change
    create_table :downfall_citizens do |t|
      t.string :name
      t.string :honourific
      t.integer :roll

      t.timestamps
    end
  end
end
