class CreateUserDetails < ActiveRecord::Migration
  def change
    create_table :user_details do |t|
    	t.belongs_to :user
      t.string :fname
      t.string :lname

      t.timestamps
    end
  end
end
