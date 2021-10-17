class AddShareToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :share, :boolean
  end
end
