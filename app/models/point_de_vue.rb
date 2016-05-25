class PointDeVue < ActiveRecord::Base
  has_many :commentaires
  has_many :jadheres
  belongs_to :contributeur
  belongs_to :codepostal
  belongs_to :ville

  validates_presence_of :codepostal_id, :ville_id, :description

  mount_uploader :image, ImageUploader

  def jadhere_by?(contributeur)
    if !contributeur || jadheres.empty?
      return false
    else
      jadheres.collect { |jadhere| jadhere.contributeur_id }.include? contributeur.id
    end
  end

end
