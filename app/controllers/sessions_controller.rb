class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :welcome]

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      flash[:success] = "You have logged in"
      redirect_to food_index_path
    else
      flash.now[:danger] = "There was something wrong with your login information"
      render 'new'
    end
  end

  # def login
  # end

  # def welcome
  # end

  # def page_requires_login
  # end

  def destroy
    session[:user_id] = nil
    flash[:success] = "You have been logged out"
    redirect_to root_path
  end

end
