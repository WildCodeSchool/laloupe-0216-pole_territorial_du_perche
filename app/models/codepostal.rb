class Codepostal < ActiveRecord::Base
	has_many :villes
	has_many :point_de_vues
end
