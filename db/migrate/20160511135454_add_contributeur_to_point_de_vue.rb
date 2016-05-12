class AddContributeurToPointDeVue < ActiveRecord::Migration
  def change
    add_column :point_de_vues, :contributeur_id, :integer
  end
end
