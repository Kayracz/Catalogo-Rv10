class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.bigint :product_id
      t.string :photo

      t.timestamps
    end
  end
end
