class ContributeursController < ApplicationController

  after_action :authenticate_animateur!, only: [:show]

  def show
    @contributeur = Contributeur.find(params[:id])
  end
  
end
