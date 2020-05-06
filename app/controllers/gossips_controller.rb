class GossipsController < ApplicationController
  # View list of gossips (order most recents first)
  def index
    @gossips = Gossip.all
  end

  # View a gossip
  def show
    @gossip = Gossip.find(params[:id])
  end

  # Display a view to create a gossip
  def new
    @gossip = Gossip.new
  end

  # Create a new gossip
  def create
    @gossip = Gossip.create(title: params[:title],
                         content: params[:content],
                         user: User.find(params[:user]))
    if
      redirect_to gossips_path
    else
      render 'new'
    end
  end


  # Display a view with a form to edit an existing gossip
  def edit

  end

  # Edit an existing gossip
  def update

  end

  # Delete a gossip
  def destroy
    Gossip.find(params[:id]).delete
    redirect_to gossips_path
  end
end
