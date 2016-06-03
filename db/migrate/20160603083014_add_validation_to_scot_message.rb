class AddValidationToScotMessage < ActiveRecord::Migration
  def change
    add_column :scot_messages, :validation, :boolean, default: false
  end
end
