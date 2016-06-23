class AddStatusToReponseQuestionnaire < ActiveRecord::Migration
  def change
    add_column :reponse_questionnaires, :status, :string
  end
end
