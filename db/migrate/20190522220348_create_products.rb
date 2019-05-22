class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :codigo
      t.boolean :azul
      t.boolean :blanco
      t.boolean :nude
      t.boolean :negro
      t.boolean :gris
      t.boolean :verde
      t.boolean :S
      t.boolean :M
      t.boolean :L
      t.boolean :XL
      t.string :sexo
      t.integer :precio
      t.text :descripcion

      t.timestamps
    end
  end
end
