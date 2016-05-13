class Ville < ActiveRecord::Base
	has_one :codepostals
	has_many :point_de_vue
end
