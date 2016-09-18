class CreateMenus < ActiveRecord::Migration[5.0]
  def change
    create_table :menus do |t|
      t.string :name
      t.integer :price
      # t.integer :order_id
      t.timestamps
    end
  end
end
