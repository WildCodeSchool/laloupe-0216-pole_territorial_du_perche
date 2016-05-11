class PointDeVuesController < ApplicationController
  before_action :authenticate_animateur!, except: [:index, :show, :last_actu, :new]

	def index
		@point_de_vues = PointDeVue.order(updated_at: :desc)
	end
	
	def show
    # @actualite = Actualite.find(params[:id])
    # @filactu = (Actualite.last(5).reverse - [@actualite])
  end
  
  def new
  	@point_de_vue = PointDeVue.new
  end

  def create
    point_de_vue = PointDeVue.new(point_de_vue_params)
    # @point_de_vue.contributeur_id = current_contributeur.id
    if point_de_vue.save
      redirect_to point_de_vues_path, method: :get
    else
      render 'new'
    end
  end
  
  private

  def point_de_vue_params
    params.require(:point_de_vue)
    .permit(:image,
            :codepostal,
            :commune,
            :description)
  end

end
