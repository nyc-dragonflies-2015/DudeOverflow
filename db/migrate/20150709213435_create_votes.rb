class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.boolean :upvote, null: false
      t.references :user
      t.references :voteable, polymorphic: true, index: true
      t.timestamps null: false
    end
  end
end
