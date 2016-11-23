class CreateNewspapers < ActiveRecord::Migration
  def change
    create_table :newspapers do |t|
      t.string :name
      t.text :address
      t.integer :amount
      t.text :description

      t.timestamps null: false
    end
  end
end
