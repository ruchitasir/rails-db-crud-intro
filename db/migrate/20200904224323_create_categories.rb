class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :topic
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
