class RemoveUseridFromLesson < ActiveRecord::Migration[5.0]
  def change
    remove_column :lessons, :user_id, :integer
  end
end
