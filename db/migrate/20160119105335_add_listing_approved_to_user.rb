class AddListingApprovedToUser < ActiveRecord::Migration
  def change
    add_column :users, :listing_approved, :boolean, default: false
  end
end
