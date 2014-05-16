class UserDetailsController < ApplicationController

  def index
  	# @userdetails = UserDetails.find(current_user.id)
  	@userdetails = UserDetails.where("user_id = ?", current_user.id)
  end

  def edit
  	@userdetails = UserDetails.find(current_user.id)
  end

end
