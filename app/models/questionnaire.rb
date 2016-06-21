class Questionnaire < ActiveRecord::Base
  belongs_to :contributeur
  validates_presence_of :titre, :code_formulaire, :description
	has_many :reponse_questionnaires
	validates_presence_of :code_formulaire, :description, :contributeur
end
