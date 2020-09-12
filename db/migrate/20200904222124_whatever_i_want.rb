class WhateverIWant < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :usename, :username
  end
end
