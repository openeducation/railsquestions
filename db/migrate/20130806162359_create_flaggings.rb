class CreateFlaggings < ActiveRecord::Migration
  def change
    create_table :flaggings do |t|
      t.string :flaggable_type, index: true
      t.integer :flaggable_id
      t.belongs_to :flag_reason, index: true
      t.belongs_to :user, index: true
      t.belongs_to :question, index: true
      t.string :state, index: true
      t.timestamps
    end
    add_index :flaggings, :flaggable_type
    add_index :flaggings, :flaggable_id
  end
end
