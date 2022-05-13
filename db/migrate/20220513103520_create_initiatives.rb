class CreateInitiatives < ActiveRecord::Migration[7.0]
  def change
    create_table :initiatives do |t|

      t.timestamps
    end
  end
end
