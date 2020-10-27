class GossipsController < ApplicationController
  def index 
    @all_gossips = Gossip.all
    @users = User.all
  end

  def show
    @gossip = Gossip.find(params[:id])
    @user = User.all
  end

  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new(title: params[:title], content: params[:content], user_id: current_user.id)
    if @gossip.save
      flash[:success] = "Ton gossip a bien été créé !"
      redirect_to root_path
      return
    else 
      render :new
    end
  end
end