class AddPostalCodeToUser < ActiveRecord::Migration
  def change
    add_column :contributeurs, :codepostal, :string
  end
end
