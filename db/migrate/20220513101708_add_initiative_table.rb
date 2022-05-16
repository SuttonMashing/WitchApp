class AddInitiativeTable < ActiveRecord::Migration[7.0]
    def change
      create_table :initiatives do |t|
        t.string :name
        t.string :condition
        t.integer :initiative
        t.integer :health
  
        t.timestamps
      end
    end
end
