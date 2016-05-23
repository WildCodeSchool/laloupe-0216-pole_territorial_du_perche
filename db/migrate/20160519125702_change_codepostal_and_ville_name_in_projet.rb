class ChangeCodepostalAndVilleNameInProjet < ActiveRecord::Migration
  def change
  	rename_column :projets, :codepostals_id, :codepostal_id
  	rename_column :projets, :villes_id, :ville_id
  end
end
