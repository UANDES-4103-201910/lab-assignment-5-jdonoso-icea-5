class UsersController < ApplicationController

  def create
    @user = User.create(params[:user])
  #@user.url = "#{@user.name}-#{@user.id}"
  end

  def update
    @user = User.find(params[:id])

  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end
end
