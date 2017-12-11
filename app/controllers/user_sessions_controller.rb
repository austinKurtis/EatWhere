class UserSessionsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, except: [:destroy]
  def new
    @user = User.new
  end

  def create
    if @user = login(params[:email], params[:password])
      redirect_back_or_to(:users)
    else
      flash.now[:alert] = 'Login failed'
      redirect_to(root_url)
    end
  end

  def destroy
    logout
    redirect_to(root_url)
  end
end
