class CreateCloseReasons < ActiveRecord::Migration
  def change
    create_table :close_reasons do |t|
      t.string :title
      t.string :description
      t.boolean :published

      t.timestamps
    end
  end
end
