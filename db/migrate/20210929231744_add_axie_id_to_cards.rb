class AddAxieIdToCards < ActiveRecord::Migration[6.1]
  def change
    add_column :cards, :axie_id, :integer
  end
end
