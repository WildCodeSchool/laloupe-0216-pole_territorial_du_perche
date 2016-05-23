class PointDeVue < ActiveRecord::Base
  has_many :commentaires
  has_many :likes
  belongs_to :contributeur
  belongs_to :codepostal
  belongs_to :ville

  validates_presence_of :codepostal_id, :ville_id, :description

  mount_uploader :image, ImageUploader

end
