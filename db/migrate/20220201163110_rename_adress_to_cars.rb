class RenameAdressToCars < ActiveRecord::Migration[6.1]
  def change
    rename_column :cars, :adress, :address
  end
end
