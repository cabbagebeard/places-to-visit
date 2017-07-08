class AddFieldsToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :country, :string
    add_column :posts, :continent, :string
  end
end
