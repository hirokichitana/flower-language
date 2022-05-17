class CreateFlowerData < ActiveRecord::Migration[6.0]
  def change
    create_table :flower_data do |t|

      t.timestamps
    end
  end
end
