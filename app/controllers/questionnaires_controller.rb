class QuestionnairesController < ApplicationController
	before_action  :authenticate_animateur!, only: [:new, :create, :destroy]
  before_action :authenticate_contributeur!, only: [:show]
  def index
    @questionnaires = Questionnaire.all.reverse
    @quest_ids = @questionnaires.map(&:id)
    @reponse_questionnaires = ReponseQuestionnaire.where(questionnaire_id: @quest_ids)
    @rep_quest_ids = @reponse_questionnaires.map(&:questionnaire_id)
  end

  def show
    @questionnaire = Questionnaire.find(params[:id])
  end

  def new
    @questionnaire = Questionnaire.new  
  end

  def create
    @questionnaire = Questionnaire.new(questionnaire_params)
    @questionnaire.contributeur_id = current_contributeur.id
     if @questionnaire.save
      @questionnaire.update(status: 'en cours')
      redirect_to questionnaires_path, method: :get
     else
      render :new
     end
  end

  def destroy
    if current_contributeur.type == 'Animateur'
      questionnaire = Questionnaire.find(params[:id])
      questionnaire.update(status: 'suppr')
    end
    redirect_to questionnaires_path, method: :get
  end

  def status_clos
    if current_contributeur.type == 'Animateur'
      @questionnaire = Questionnaire.find(params[:id])
      @questionnaire.update(status: 'clos')
    end
    redirect_to questionnaires_path
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