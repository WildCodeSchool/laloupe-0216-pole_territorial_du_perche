class CreateActives < ActiveRecord::Migration
  def change
    create_table :actives do |t|
      t.belongs_to :questionnaire, index: true
      t.belongs_to :animateur, index: true

      t.timestamps null: false
    end
  end
end
