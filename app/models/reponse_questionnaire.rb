class ReponseQuestionnaire < ActiveRecord::Base
	belongs_to :questionnaire
	validates_presence_of :texte, :pourcentage
end
