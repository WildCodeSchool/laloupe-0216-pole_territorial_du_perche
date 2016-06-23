class QuestionnairesController < ApplicationController
	before_action  :authenticate_animateur!, only: [:new, :create, :destroy]

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
      redirect_to questionnaires_path, method: :get
     else
      render :new
     end
  end

  def destroy
    questionnaire = Questionnaire.find(params[:id])
    questionnaire.destroy
    if params[:redirect] == 'index_questionnaires'
      redirect_to questionnaires_path, method: :get
    else
      redirect_to animation_path, method: :get
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