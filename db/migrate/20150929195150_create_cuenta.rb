class CreateCuenta < ActiveRecord::Migration
  def change
    create_table :cuenta do |t|
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
