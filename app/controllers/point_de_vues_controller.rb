class PointDeVuesController < ApplicationController
  before_action :authenticate_animateur!, except: [:index, :show, :last_actu]

	def index
		@point_de_vues = PointDeVue.order(updated_at: :desc)
	end
	
	def show
    @actualite = Actualite.find(params[:id])
    @filactu = (Actualite.last(5).reverse - [@actualite])
  end
  
  def new
  	@point_de_vue = PointDeVue.new
  end

  def create

  end
  
end
