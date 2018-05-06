class RenameColumnAgainInEvent < ActiveRecord::Migration[5.1]
  def change
  	rename_column :events, :classtime, :start_time
  end
end
