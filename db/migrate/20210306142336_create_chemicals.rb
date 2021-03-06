class CreateChemicals < ActiveRecord::Migration[6.1]
  def change
    create_table :chemicals do |t|
      t.string :name
      t.integer :price_per_litre
      t.integer :application_frequency

      t.timestamps
    end
  end
end
