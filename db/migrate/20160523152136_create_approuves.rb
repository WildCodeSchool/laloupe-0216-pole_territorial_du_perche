class CreateApprouves < ActiveRecord::Migration
  def change
    create_table :approuves do |t|
      t.belongs_to :point_de_vue, index: true
      t.belongs_to :contributeur, index: true

      t.timestamps null: false
    end
  end
end
