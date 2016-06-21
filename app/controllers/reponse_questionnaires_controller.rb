class ReponseQuestionnairesController < ApplicationController
 	def show
    @reponse_questionnaire = ReponseQuestionnaire.find(params[:id])
  	end

  	def new
  	@reponse_questionnaire = ReponseQuestionnaire.new	
  	end

  	def create
  	reponse_questionnaire = ReponseQuestionnaire.new(reponse_questionnaire_params)
  	 if reponse_questionnaire.save
  	 	redirect_to questionnaires_path, method: :get
  	 else
      render 'new'
     end
  end
  private

  def reponse_questionnaire_params
    params.require(:reponse_questionnaire)
      .permit(:pourcentage,
              :texte)
  end
end
