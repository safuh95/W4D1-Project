class UsersController < ApplicationController

  def index
    all_users = User.all?
    render json: all_users
  end

  def create
    user = User.new(params.require(:user).permit(:name, :email))
    # replace the `user_attributes_here` with the actual attribute keys
    user.save!
    render json: user
end

  def show
    # debugger
    render json: params

  end
end
