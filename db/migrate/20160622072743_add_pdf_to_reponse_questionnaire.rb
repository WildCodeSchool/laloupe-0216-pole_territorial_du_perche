class AddPdfToReponseQuestionnaire < ActiveRecord::Migration
  def change
    add_column :reponse_questionnaires, :pdf, :string
  end
end
