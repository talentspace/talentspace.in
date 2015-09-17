class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.string :name
      t.string :email
      t.string :phone_number
      t.text :bio
      t.text :sample_program

      t.timestamps null: false
    end
  end
end
