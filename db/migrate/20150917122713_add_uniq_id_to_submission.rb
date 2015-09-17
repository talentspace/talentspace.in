class AddUniqIdToSubmission < ActiveRecord::Migration
  def change
    add_column :submissions, :uniq_id, :string
  end
end
