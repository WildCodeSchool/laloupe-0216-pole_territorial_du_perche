class RenameApprouveToJadhere < ActiveRecord::Migration
  def change
    rename_table :approuves, :jadheres
  end
end
