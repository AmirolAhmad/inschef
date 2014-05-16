class UserDetailsController < ApplicationController

  def index
  	@userdetails = UserDetails.find(current_user.id)
  end

  def edit
  	# render plain: params[:id].inspect
  	if params[:id].to_f == current_user.id
  		@userdetails = UserDetails.find(current_user.id)
  	else
  		redirect_to root_path
  	end
  end

  def update
  	@userdetails = UserDetails.find(current_user.id)
  	if @userdetails.update_attributes(detail_params)
      flash[:success] = "Profile updated"
      redirect_to @userdetails
    else
      render 'edit'
    end
  end

  def show
  	@userdetails = UserDetails.where("user_id = ?", current_user.id)
  end

  private
	def detail_params
	  params.require(:user_details).permit(:fname, :lname)
	end

end
