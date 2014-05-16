class UserDetails < ActiveRecord::Base
	belongs_to :user, :foreign_key => "user_id"

	validates :fname, length: { minimum: 6 }
	validates :lname, length: { minimum: 6 }

end