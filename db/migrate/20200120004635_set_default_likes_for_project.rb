class SetDefaultLikesForProject < ActiveRecord::Migration[5.2]
  def change
    change_column :projects, :likes, :integer, default: 0
  end
end
