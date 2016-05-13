class PointDeVue < ActiveRecord::Base
  has_many :commentaires
  has_many :likes
  belongs_to :contributeurs
  has_one :codepostal
  has_one :ville

  validates_presence_of :codepostal, :commune, :description

  mount_uploader :image, ImageUploader

end
