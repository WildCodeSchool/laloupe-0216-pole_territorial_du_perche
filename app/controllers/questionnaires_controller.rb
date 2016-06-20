class QuestionnairesController < ApplicationController
	before_action  :authenticate_animateur!, only: [:new, :create]

  def index
    @questionnaires = Questionnaire.all.reverse
    @reponse_questionnaires = ReponseQuestionnaire.all
  end

  def show
    @questionnaire = Questionnaire.find(params[:id])
  end


  def new
    @questionnaire = Questionnaire.new  
  end

  def create
    questionnaire = Questionnaire.new(questionnaire_params)
    questionnaire.contributeur_id = current_contributeur.id
     if questionnaire.save
      redirect_to questionnaires_path, method: :get
     else
      render 'new'
     end
  end

private

  def questionnaire_params
    params.require(:questionnaire)
      .permit(:titre,
              :description,
              :contributeur_id,
              :code_formulaire)
  end
end
