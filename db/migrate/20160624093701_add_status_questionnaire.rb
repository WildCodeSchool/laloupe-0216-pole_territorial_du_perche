class AddStatusQuestionnaire < ActiveRecord::Migration
  def change
    add_column :questionnaires, :status, :string
  end
end
