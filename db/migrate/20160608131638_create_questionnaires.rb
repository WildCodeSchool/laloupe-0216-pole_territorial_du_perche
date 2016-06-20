class CreateQuestionnaires < ActiveRecord::Migration
  def change
    create_table :questionnaires do |t|
      t.string :titre
      t.integer :contributeur_id
      t.string :code_formulaire
      t.text :description
      t.timestamps null: false
    end
  end
end
