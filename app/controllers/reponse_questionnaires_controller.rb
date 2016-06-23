class ReponseQuestionnairesController < ApplicationController

  def new
  	@reponse_questionnaire = ReponseQuestionnaire.new	
  end

  def create
    reponse_questionnaire = ReponseQuestionnaire.new(reponse_questionnaire_params)
    if reponse_questionnaire.save
      uploaded_pdf = reponse_questionnaire_params[:pdf]
      # binding.pry
      File.open(Rails.root.join('public', 'uploads', 'pdf', uploaded_pdf.original_filename), 'wb') do |file|
        file.write(uploaded_pdf.read)
      end
      reponse_questionnaire.update(pdf: uploaded_pdf.original_filename )
    	redirect_to questionnaires_path, method: :get
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
      .permit(:pourcentage, :texte, :questionnaire_id)
  end
