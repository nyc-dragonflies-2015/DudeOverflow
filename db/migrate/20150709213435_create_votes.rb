class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :count, null: false, default: 0
      t.references :user
      t.references :voteable, polymorphic: true, index: true
      t.timestamps null: false
    end
  end
end
