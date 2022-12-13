class CreateCeps < ActiveRecord::Migration[6.1]
  def change
    create_table :ceps do |t|
      t.string :number
      t.string :address
      t.string :city
      t.string :uf
      t.string :full_address

      t.timestamps
    end
  end
end
