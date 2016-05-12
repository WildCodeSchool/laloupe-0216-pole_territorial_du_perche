class AddAttributesToPointDeVue < ActiveRecord::Migration
  def change
    add_column :point_de_vues, :titre, :string
    add_column :point_de_vues, :codepostal, :string
    add_column :point_de_vues, :description, :text
    add_column :point_de_vues, :localisation, :string
    add_column :point_de_vues, :image, :string
  end
end
