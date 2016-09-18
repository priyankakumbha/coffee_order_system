class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email_id
      t.string :name
      t.boolean :admin, :default => false
      t.text :password_digest
      t.timestamps
    end
  end
end
