class CreateTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :types do |t|
      t.string :gorgeous, null: false
      t.string :simple,   null: false
      t.string :formal,   null: false
      t.string :casual,   null: false
      t.timestamps
    end
  end
end
