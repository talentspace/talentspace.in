class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :description, :text
    add_column :users, :github_link, :string
    add_column :users, :twitter_link, :string
    add_column :users, :linkedin_link, :string
  end
end
