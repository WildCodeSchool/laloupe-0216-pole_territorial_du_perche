class Addcolumnvillesandcodepostalsinprojetstable < ActiveRecord::Migration
  def change
  	add_reference :projets, :codepostals, index: true
  	add_reference :projets, :villes, index: true
  end
end
