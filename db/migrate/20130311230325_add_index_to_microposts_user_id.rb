class AddIndexToMicropostsUserId < ActiveRecord::Migration
  def change
    add_index :microposts, :user_id
  end
end
