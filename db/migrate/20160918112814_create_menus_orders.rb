class CreateMenusOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :menus_orders do |t|
      t.integer :menu_id
      t.integer :order_id
      t.timestamps
    end
  end
end
