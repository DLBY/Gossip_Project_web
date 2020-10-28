class UserController < ApplicationController

  def index
    @users = User.all
    @cities = City.all
  end

  def show
    @user = User.find(params[:user_id])
  end

  def new
    @user = User.new
  end
  
end