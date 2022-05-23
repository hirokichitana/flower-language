class CreateFlowers < ActiveRecord::Migration[6.0]
  def change
    create_table :flowers do |t|
      t.string  :flower_name,  null: false
      t.string  :explanation,  null: false
      t.integer :type_id
      t.integer :user_id
      t.timestamps
    end
  end
end
