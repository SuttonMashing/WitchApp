class CreateHitherEncounters < ActiveRecord::Migration[7.0]
  def change
    create_table :hither_encounters do |t|
      t.integer :roll
      t.string :encounter

      t.timestamps
    end
  end
end
