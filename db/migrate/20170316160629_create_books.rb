class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title, require: true
      t.integer :year
      t.string :cover

      t.timestamps
    end
  end
end
