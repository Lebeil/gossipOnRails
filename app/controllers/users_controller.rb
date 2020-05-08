class UsersController < ApplicationController
  before_action :authenticate_user, only: [:index, :show]

  def new
    @user = User.new
  end

  def create
    @user = User.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], age: params[:age], description: params[:description], password: params[:password], city: City.all.sample)

    if @user.save
      puts "Operation success"
      flash[:success] = "Création d'un nouveau profil réussie"
      redirect_to new_session_path
    else
      puts "Failure"
      flash[:failure] = "Formulaire invalide"
      render :new
    end
  end

  def show
    @user = params[:id]
  end

  def index
    @users = User.all
  end

end
