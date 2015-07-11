class AddViewCountToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :view_count, :integer, null: false, default: 0
  end
end
