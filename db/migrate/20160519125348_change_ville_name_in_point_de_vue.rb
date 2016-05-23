class ChangeVilleNameInPointDeVue < ActiveRecord::Migration
  def change
  	rename_column :point_de_vues, :villes_id, :ville_id
  end
end
