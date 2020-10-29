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

  def create
    @user = User.new(params.permit(:first_name, :last_name, :email, :age, :description, :password)

    if @user.save
      flash[:success] = "Compte bien créé !"
      redirect_to user_path(@user.id)
    else
      flash[:failure] = "Erreur lors de la création du compte !"
      redirect_to root_path
    end
  end
  
end