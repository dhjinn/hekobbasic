class RenameColumnInEvent < ActiveRecord::Migration[5.1]
  def change
  	rename_column :events, :when, :classtime
  end
end
