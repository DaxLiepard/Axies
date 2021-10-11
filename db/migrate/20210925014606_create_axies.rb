class CreateAxies < ActiveRecord::Migration[6.1]
  def change
    create_table :axies do |t|
      t.string :name
      t.integer :health
      t.integer :speed
      t.integer :morale
      t.integer :skill

      t.timestamps
    end
  end
end
