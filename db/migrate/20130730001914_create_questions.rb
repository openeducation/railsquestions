class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.belongs_to :user, index: true
      t.text :body
      t.string :slug
      t.boolean :closed, default: false, null: :false
      t.belongs_to :close_reason, index: true
      t.datetime :closed_at

      t.timestamps
    end
  end
end
