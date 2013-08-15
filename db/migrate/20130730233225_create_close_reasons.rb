class CreateCloseReasons < ActiveRecord::Migration
  def change
    create_table :close_reasons do |t|
      t.string :title, index: true, unique: true, null: false
      t.string :description, null: false
      t.boolean :published, default: false

      t.timestamps
    end
  end
end
