class UsersController < ApplicationController
  def new
    @user= User.new 
  end

  def create
    @user= User.create(user_params)
    if @user.save 
      render json: @user
    else
      render json: {error: "bad user"}, status: bad_request
    end
  end

  #GET /user
  #GET /users.json
  def index
    @users= User.all 
  end


  def destroy
    @user=User.find(params[:id])
    @user.destroy
  end
end
