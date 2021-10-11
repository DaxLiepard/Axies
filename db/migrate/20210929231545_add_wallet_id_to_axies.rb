class AddWalletIdToAxies < ActiveRecord::Migration[6.1]
  def change
    add_column :axies, :wallet_id, :integer
  end
end
