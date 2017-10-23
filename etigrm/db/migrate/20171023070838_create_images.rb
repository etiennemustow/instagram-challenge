class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :image
      t.text :description
      t.integer :likes

      t.timestamps
    end
  end
end
