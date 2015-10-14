class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :codigo
      t.integer :nivel
      t.string :tipo_saldo
      t.string :imputable
      t.string :descripcion
      t.string :padre

      t.timestamps
    end
  end
end
