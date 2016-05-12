class CreateCodepostals < ActiveRecord::Migration
  def change
    create_table :codepostals do |t|
    	t.integer :codepostal

      t.timestamps null: false
    end
  end
end
