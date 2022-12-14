class RenameCepModelToAddress < ActiveRecord::Migration[6.1]
  def change
    rename_table :ceps, :addresses
  end
end
