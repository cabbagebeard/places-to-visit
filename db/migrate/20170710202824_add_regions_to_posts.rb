class AddRegionsToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :region, :string
    add_column :posts, :subregion, :string
  end
end
