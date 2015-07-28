class CreateTales < ActiveRecord::Migration
  def change
    create_table :tales do |t|
      t.string :title
      t.text :body
      t.string :author
      t.boolean :published

      t.timestamps null: false
    end
  end
end
