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

end
