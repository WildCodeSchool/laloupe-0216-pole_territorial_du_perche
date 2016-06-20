class Questionnaire < ActiveRecord::Base
	has_many :reponse_questionnaires
	validates_presence_of :code_formulaire, :description, :contributeur
end
