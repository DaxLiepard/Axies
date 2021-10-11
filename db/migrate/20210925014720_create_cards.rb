class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.integer :attack
      t.integer :defense

      t.timestamps
    end
  end
end
