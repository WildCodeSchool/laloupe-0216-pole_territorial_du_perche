class Questionnaire < ActiveRecord::Base
  belongs_to :contributeur
  validates_presence_of :titre, :code_formulaire, :description
end
