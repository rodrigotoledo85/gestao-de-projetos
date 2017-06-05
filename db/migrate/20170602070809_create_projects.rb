class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.references :user, index: true, foreign_key: true
      t.references :course, index: true, foreign_key: true
      t.references :discipline, index: true, foreign_key: true
      t.string :title
      t.text :description
      t.integer :status

      t.timestamps null: false
    end
  end
end
