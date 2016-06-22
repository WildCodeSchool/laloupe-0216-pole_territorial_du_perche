class ReponseQuestionnairesController < ApplicationController
 	
  def new
  	@reponse_questionnaire = ReponseQuestionnaire.new	
  end

  def create
  	reponse_questionnaire = ReponseQuestionnaire.new(reponse_questionnaire_params)
  	 if reponse_questionnaire.save
  	 	redirect_to new_reponse_questionnaire_path, method: :get
  	 else
      render 'new'
     end
  end

  def destroy
    reponse_questionnaire = ReponseQuestionnaire.find(params[:id])
    reponse_questionnaire.destroy
    redirect_to questionnaires_path
  end
end

private

  def reponse_questionnaire_params
    params.require(:reponse_questionnaire)
      .permit(:pourcentage,
              :texte)
  end
