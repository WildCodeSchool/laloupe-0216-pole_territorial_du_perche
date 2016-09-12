class CreateReponseQuestionnaires < ActiveRecord::Migration
  def change
    create_table :reponse_questionnaires do |t|
    	t.references :questionnaire, index:true
    	t.integer :pourcentage
    	t.text :texte

      t.timestamps null: false
    end
  end
end
