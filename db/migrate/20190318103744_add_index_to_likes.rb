class AddIndexToLikes < ActiveRecord::Migration[5.0]
  def change
    # add_index :users, [:name, :employee_id], :unique => true
    add_index :likes, [:user_id, :micropost_id], unique: true
  end
end
