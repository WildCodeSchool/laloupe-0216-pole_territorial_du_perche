class CreatePointDeVues < ActiveRecord::Migration
  def change
    create_table :point_de_vues do |t|


    	

      t.timestamps null: false
    end
  end
end
