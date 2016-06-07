class ScotMessage < ActiveRecord::Base
  belongs_to :contributeur
  has_many :scot_jadheres

  def scot_jadhere_by?(contributeur)
    if !contributeur || scot_jadheres.empty?
      return false
    else
      scot_jadheres.collect { |scot_jadhere| scot_jadhere.contributeur_id }.include? contributeur.id
    end
  end
end
