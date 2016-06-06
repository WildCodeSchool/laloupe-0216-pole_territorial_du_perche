class Jadhere < ActiveRecord::Base
  belongs_to :point_de_vue
  belongs_to :contributeur
  belongs_to :scot_message
  validates_presence_of :contributeur, :point_de_vue
  validates_uniqueness_of :contributeur, scope: :point_de_vue
end
