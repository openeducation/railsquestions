class CreateFlagReasons < ActiveRecord::Migration
  def change
    create_table :flag_reasons do |t|
      t.string :title, index: true, unique: true, null: false
      t.text :description, null: false
      t.integer :flag_count, default: 0, null: false
      t.boolean :published, default: false, null: false
      t.timestamps
    end
  end
end
