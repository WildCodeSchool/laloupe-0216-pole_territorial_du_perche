class PointDeVuesController < ApplicationController

	def index
	end
	
	def show
    @actualite = Actualite.find(params[:id])
    @filactu = (Actualite.last(5).reverse - [@actualite])
  end
end
