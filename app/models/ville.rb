class Ville < ActiveRecord::Base
	belongs_to :codepostal
	has_many :point_de_vue
end
