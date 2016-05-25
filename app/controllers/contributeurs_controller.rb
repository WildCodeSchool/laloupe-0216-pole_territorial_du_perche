class ContributeursController < ApplicationController
  def show
    @contributeur = Contributeur.find(params[:id])
  end
end
