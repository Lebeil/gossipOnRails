class GossipsController < ApplicationController
  before_action :authenticate_user, only: [:create, :show, :new]
  before_action :authenticate_user_edit, only: [:edit, :update]

  # View list of gossips (order most recents first)
  def index
    @gossips = Gossip.all.order("created_at DESC")
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
    @gossip = Gossip.new(title: params[:title],
                         content: params[:content],
                         user: User.find(params[:user]))
    if @gossip.save
      redirect_to gossips_path
    else
      render 'new'
    end
  end


  # Display a view with a form to edit an existing gossip
  def edit
    @gossip = Gossip.find(params[:id])
  end

  # Edit an existing gossip
  def update
    @gossip = Gossip.find(params[:id])
    post_params = params.require(:gossip).permit(:title, :content)
    @gossip.update(post_params)
    redirect_to gossips_path
  end

  # Delete a gossip
  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to gossips_path
  end
end
