class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :usename
      t.integer :age
      t.boolean :is_admin
    end
  end
end
