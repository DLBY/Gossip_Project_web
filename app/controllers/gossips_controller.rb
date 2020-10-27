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
    gossip = Gossip.new(title: params[:title],content: params[:content], user: User.first)

    if gossip.save
      flash[:success] = "Nouveau gossip publié !"
      redirect_to root_path
    else
      flash[:failure] = "Erreur lors de la publication du gossip !"
      redirect_to request.referrer
    end
  end
end