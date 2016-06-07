class CreateScotJadheres < ActiveRecord::Migration
  def change
    create_table :scot_jadheres do |t|
      t.belongs_to :scot_message, index: true
      t.belongs_to :contributeur, index: true

      t.timestamps null: false
    end
  end
end
