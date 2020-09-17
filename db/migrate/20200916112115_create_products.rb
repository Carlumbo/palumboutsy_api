class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.text :title
      t.text :image
      t.integer :price
      t.integer :rating


      t.timestamps
    end
  end
end
 