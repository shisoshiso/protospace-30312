class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @name = @user.name
    @prototypes = @user.prototypes
  end
end
