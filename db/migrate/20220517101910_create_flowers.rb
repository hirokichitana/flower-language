class CreateFlowers < ActiveRecord::Migration[6.0]
  def change
    create_table :flowers do |t|
      t.string     :name,  null: false
      t.integer :type_id
      t.integer :user_id
      t.timestamps
    end
  end
end
