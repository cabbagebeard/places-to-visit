class RemoveFieldsFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :continent
    remove_column :posts, :description
  end
end
