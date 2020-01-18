class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :github_url
      t.string :demo_url
      t.text :description
      t.integer :likes

      t.timestamps
    end
  end
end
