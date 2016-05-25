class PointDeVue < ActiveRecord::Base
  has_many :commentaires
  has_many :jadheres
  belongs_to :contributeur
  validates_presence_of :codepostal, :commune, :description

  mount_uploader :image, ImageUploader

  def jadhere_by?(contributeur)
    if !contributeur || jadheres.empty?
      return false
    else
      jadheres.collect { |jadhere| jadhere.contributeur_id }.include? contributeur.id
    end
  end

end
