class AddPositifToPdv < ActiveRecord::Migration
  def change
    add_column :point_de_vues, :positif, :boolean, default: true
  end
end
