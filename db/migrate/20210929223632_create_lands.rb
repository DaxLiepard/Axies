class CreateLands < ActiveRecord::Migration[6.1]
  def change
    create_table :lands do |t|
      t.integer :width
      t.integer :height

      t.timestamps
    end
  end
end
