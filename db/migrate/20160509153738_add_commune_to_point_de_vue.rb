class AddCommuneToPointDeVue < ActiveRecord::Migration
  def change
    add_column :point_de_vues, :commune, :string
  end
end
