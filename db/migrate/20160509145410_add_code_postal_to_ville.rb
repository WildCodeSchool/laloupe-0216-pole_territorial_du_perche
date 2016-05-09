class AddCodePostalToVille < ActiveRecord::Migration
  def change
  	add_reference :villes, :codepostal, index: true
  end
end
