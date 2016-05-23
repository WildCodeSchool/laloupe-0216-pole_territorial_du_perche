class Changecodepostalandcommunetypeofpointdevues < ActiveRecord::Migration
  def change
  	remove_column :point_de_vues, :commune
  	remove_column :point_de_vues, :codepostal

  	add_reference :point_de_vues, :codepostals, index: true
  	add_reference :point_de_vues, :villes, index: true
  end
end
