class CreatePrints < ActiveRecord::Migration[5.0]
  def change
    create_table :prints do |t|
      t.string :title
      t.integer :height
      t.integer :width
      t.string :medium
      t.decimal :price
      t.text :body
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
