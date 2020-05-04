class FrontController < ApplicationController
  # View list of gossips
  def gossips
    @gossips = Gossip.all
  end

  # View a gossip
  def gossip
    @gossip = Gossip.find(params[:id])
  end

  # View Team page
  def team
  end

  # View Contact page
  def contact
  end

  # View Welcome page displaying User's first name
  def welcome
    @first_name = params[:first_name]
  end

  # View user page
  def user
    @user = User.find(params[:id])
  end
end
