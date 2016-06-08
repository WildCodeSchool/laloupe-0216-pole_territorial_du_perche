class DeleteCodepostalidAndVilleidInProjet < ActiveRecord::Migration
  def change
    remove_column :projets, :codepostal_id
    remove_column :projets, :ville_id
  end
end
