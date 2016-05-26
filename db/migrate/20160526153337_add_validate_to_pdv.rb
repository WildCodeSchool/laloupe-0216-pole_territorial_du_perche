class AddValidateToPdv < ActiveRecord::Migration
  def change
  	add_column :point_de_vues, :validation, :boolean, default: false

  end
end
