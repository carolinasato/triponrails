class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
      t.string :currency
      t.string :language
      t.string :capital
      t.string :point_of_interest
      t.integer :cost
      t.timestamps null: false
    end
  end
end
