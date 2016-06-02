class CreateScotMessages < ActiveRecord::Migration
  def change
    create_table :scot_messages do |t|
      t.text :contenu
      t.belongs_to :contributeur, index: true
      t.timestamps null: false
    end
  end
end
