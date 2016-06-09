class QuestionnairesController < ApplicationController

  def index
    @questionnaires = Questionnaire.all.reverse
  end

  def show
    @questionnaire = Questionnaire.find(params[:id])
  end

  def questionnaire_params
    params.require(:questionnaire)
      .permit(:titre,
              :description,
              :contributeur_id,
              :code_formulaire)
  end

  def new
  	@questionnaire = Questionnaire.new	
  end

  def create
  	questionnaire = Questionnaire.new(questionnaire_params)
  	questionnaire.contributeur_id = current_contributeur.id
  	 if questionnaire.save
  	 	redirect_to @questionnaire
  	 else
      render 'new'
     end
  end

end
