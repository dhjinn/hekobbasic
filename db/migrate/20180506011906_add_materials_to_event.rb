class AddMaterialsToEvent < ActiveRecord::Migration[5.1]
  def change
  	add_column :events, :materials, :string
  end
end
