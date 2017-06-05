class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :status
      t.integer :kind

      t.timestamps null: false
    end
  end
end
