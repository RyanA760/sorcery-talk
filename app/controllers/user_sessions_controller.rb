class UserSessionsController < ApplicationController
  skip_before_action :require_login, except: [:destroy]

  def new
  	@user = User.new
  end

  def create
  	if @user = login(params[:email], params[:password])
  		redirect_back_or_to(:users, notice: 'Login Successful. Welcome!')
  	else
  		flash.now[:alert] = 'Login Failed. Loser!'
  		render action: 'new'
  	end
  end

  def destroy
  	logout
  	redirect_to(:users, notice: 'You have logged out. Peace Out Girl Scout!')
  end
end
