class ChangeCodepostalNameInPointDeVue < ActiveRecord::Migration
  def change
  	rename_column :point_de_vues, :codepostals_id, :codepostal_id
  end
end
