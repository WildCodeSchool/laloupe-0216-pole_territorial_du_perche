class UsersController < ApplicationController
  def show
    @user = Contributeur.find(params[:id])
  end
end
