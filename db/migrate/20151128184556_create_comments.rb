class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
        t.integer :country_id
        t.string :author
        t.string :text
      t.timestamps null: false
    end
  end
end
