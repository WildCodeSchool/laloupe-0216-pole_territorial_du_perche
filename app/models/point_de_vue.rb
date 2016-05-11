class PointDeVue < ActiveRecord::Base
  has_many :commentaires
  has_many :likes
  belongs_to :contributeurs
  validates_presence_of :codepostal, :commune, :description

  mount_uploader :image, ImageUploader

end
