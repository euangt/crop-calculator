class CreateFields < ActiveRecord::Migration[6.1]
  def change
    create_table :fields do |t|
      t.references :farm, null: false, foreign_key: true
      t.string :name
      t.integer :width
      t.integer :length
      t.references :crop, null: false, foreign_key: true
      t.date :last_sprayed
      t.integer :hectarage

      t.timestamps
    end
  end
end
