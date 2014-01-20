class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title, null: :false
      t.belongs_to :user, index: true, null: :false
      t.text :body, null: :false
      t.string :slug, null: :false
      t.boolean :closed, default: false, null: :false
      t.belongs_to :close_reason, index: true
      t.datetime :closed_at
      t.integer :flag_counter

      t.timestamps
    end
  end
end
