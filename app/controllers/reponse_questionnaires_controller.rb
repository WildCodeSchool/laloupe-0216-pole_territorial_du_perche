class ReponseQuestionnairesController < ApplicationController

  def new
    @questionnaires = Questionnaire.all.select :id, :titre
    @reponse_questionnaire = ReponseQuestionnaire.new	
  end

  def create
    @reponse_questionnaire = ReponseQuestionnaire.new(reponse_questionnaire_params)
    if @reponse_questionnaire.save
      if reponse_questionnaire_params[:pdf].present?
        uploaded_pdf = reponse_questionnaire_params[:pdf]
        File.open(Rails.root.join('public', 'uploads', 'pdf', uploaded_pdf.original_filename), 'wb') do |file|
          file.write(uploaded_pdf.read)
        end
        @reponse_questionnaire.update(pdf: uploaded_pdf.original_filename )
      end
    	redirect_to new_reponse_questionnaire_path, method: :get
    else
      @questionnaires = Questionnaire.all.select :id, :titre
      render 'new'
    end
  end

  def destroy_all
    if current_contributeur.type == 'Animateur'
      questionnaire = Questionnaire.find(params[:id])
      reponses_questionnaire = ReponseQuestionnaire.where(questionnaire_id: questionnaire.id)
      reponses_questionnaire.destroy_all
      questionnaire.destroy
    end
    redirect_to questionnaires_path
  end

  def destroy
    if current_contributeur.type == 'Animateur'
      reponse_questionnaire = ReponseQuestionnaire.find(params[:id])
      reponse_questionnaire.destroy
    end
    redirect_to questionnaires_path
  end
end

private

  def reponse_questionnaire_params
    params.require(:reponse_questionnaire)
      .permit(:pourcentage, :texte, :questionnaire_id, :pdf)
  end
